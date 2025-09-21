#   ZMAKE 0.1.1
# A personal CMake project tempate / building automation tool.
function zmake

   # variables
   set -g current_dir (pwd)
   set -g current_project

   # Helpers
   function log
      set input $argv[1]
      echo -e "\e[3;92m $input"
   end

   function zmake_check
      if not test -f $current_dir/.id.z
         log " > Error!!! Not currently in a ZMake project. Did you run 'zmake new'?"
         return 1
      end
   end

   # build as a function so it can be called again by run
   function build
      zmake_check 
      if test $status -eq 1
         return 1
      end

      if not test -d $current_dir/build
         mkdir $current_dir/build
      end

      set current_project (tail $current_dir/.id.z)
      log " > Building $current_project..."
      cd build
      cmake ..
      make
      cd ..

      return 1
   end


   if test (count $argv) -eq 0
      echo "Usage: zmake <command>


Commands: build, clean, new, run

build: Builds the current project (If in a project directory)

clean: Removes the generated make/build files for clean rebuilding/running

new <Project-Name>: Creates a template project styled the say I like.

run: Clean, build, & run the current project in one beautiful command.

"
      return 1
   end

   if type -q cmake
      
      set cmd $argv[1]
      set args $argv[2]

      switch $cmd
         case new
            set projname $argv[2]

            # Make sure not to make a new project if one / directory of the same name already exists
            set dir_failsafe "$current_dir/$projname"

            # VERY simple user input error catching
            if not string length -q -- $projname 
               log "Please type a name for your project!"
               return 1
            end

            if test -d $dir_failsafe
               log "This project/directory already exists!"
               return 1
            end

            # Make project
            mkdir $projname
            mkdir $projname/src
            mkdir $projname/build
            log "> New project directory '$current_dir/$projname' created..."

            # Get the first line of cmake --version and extract the version number
            set version_line (cmake --version | head -n 1)
            set cversion (string match -r '\d+\.\d+\.\d+' -- $version_line)

            # CMakeLists.txt Template
            echo "cmake_minimum_required(VERSION $cversion)" > $projname/CMakeLists.txt
            echo "project($projname)" >> $projname/CMakeLists.txt
            echo "add_executable($projname src/main.cc)" >> $projname/CMakeLists.txt

            # CC file template
            echo "#include <iostream>" > $projname/src/main.cc
            echo "" >> $projname/src/main.cc
            echo "int main(){" >> $projname/src/main.cc
            echo '  std::cout << "Hello, World!" << std::endl;' >> $projname/src/main.cc 
            echo "  //" >> $projname/src/main.cc
            echo "  return 0;" >> $projname/src/main.cc
            echo "}" >> $projname/src/main.cc

            # Z file to identify this as a ZMake project
            echo "$projname" > $projname/.id.z

            # initialize git
            if type -q git
               git init $projname
               echo "/build/" > $projname/.gitignore
               log "> git initialized..."
               log "> Project '$projname' created successfully!"
               return 1
            else
               log "> WARNING!!!
Git failed to initialize! Is 'git' installed?"
               log "> Project '$projname' created! (WITHOUT git)"
               return 1
            end

         case build
            #calling build function
            build

         case run
            # failsafes in case something fucks up
            zmake_check
            if test $status -eq 1
               return 1
            end

            log "> Running $current_project..."
            build
            cd build
            set output "$current_project"
            if test -x $output 
               log " > Build successful. Running binary..."
               ./$output
            else
               log " > Build successful. Running binary..."
               chmod +x $output
               ./$output
            end
            cd ..

            return 1

         case clean
            zmake_check
            if test $status -eq 1
               return 1
            end


            set build_folder "$current_dir/build"
            log " > Removing build folder..."
            if test -d "$build_folder"
               rm -rf $build_folder
               log " > Successfully cleaned!"
            else 
               log " > Folder doesn't exist! Easiest cleanup EVER!!!"
               log " > Successfully cleaned!"
            end
            return 1

         case '*'
            echo "What? Type a real command moron."
            return 1
      end

   else
      echo "Please install CMake..."
      return 1
   end

   # Delete helper functions
   functions -e log
   functions -e build
   functions -e zmake_check
end
