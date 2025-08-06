#!/bin/sh
pactl load-module module-null-sink sink_name=Browser
pactl load-module module-null-sink sink_name=Discord

pactl load-module module-null-sink sink_name=Source sink_properties=device.description="Null Sink"
pactl load-module module-virtual-source source_name=MIC master=Source.monitor source_properties=devide.description="Virtual Mic output"
