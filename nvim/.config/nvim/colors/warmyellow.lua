-- ~/.config/nvim/lua/colors/warmyellow.lua

local colors = {
  bg = "#2C2A1D",
  fg = "#F9F5D7",
  cursor = "#FFF176",
  selection = "#FFEB99",
  comment = "#FFD54F",
  constant = "#FFF176",
  identifier = "#FF7043",
  statement = "#FFEB3B",
  preproc = "#FFE082",
  type = "#FFF59D",
  special = "#FF8A65",
  underline = "#FFF9C4",
  todo_bg = "#5D5B3F",
  todo_fg = "#FFEB3B",
}

vim.opt.background = "dark"
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.g.colors_name = "warmyellow"

local function hi(group, opts)
  local cmd = "highlight " .. group
  if opts.guifg then
    cmd = cmd .. " guifg=" .. opts.guifg
  end
  if opts.guibg then
    cmd = cmd .. " guibg=" .. opts.guibg
  end
  if opts.gui then
    cmd = cmd .. " gui=" .. opts.gui
  end
  vim.cmd(cmd)
end

hi("Normal", { guifg = colors.fg, guibg = colors.bg })
hi("Cursor", { guifg = colors.bg, guibg = colors.cursor })
hi("Visual", { guibg = colors.selection })
hi("Comment", { guifg = colors.comment })
hi("Constant", { guifg = colors.constant })
hi("Identifier", { guifg = colors.identifier })
hi("Statement", { guifg = colors.statement })
hi("PreProc", { guifg = colors.preproc })
hi("Type", { guifg = colors.type })
hi("Special", { guifg = colors.special })
hi("Underlined", { guifg = colors.underline, gui = "underline" })
hi("Todo", { guifg = colors.todo_fg, guibg = colors.todo_bg })
