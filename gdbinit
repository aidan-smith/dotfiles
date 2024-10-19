set auto-load safe-path /

set history save on
set history filename ~/.cache/gdb_history

set confirm off
set breakpoint pending on

# 31 red, 32 green, 33 yellow, 34 blue, 35 magenta, 36 cyan, 37 white
set prompt \033[1;35mgdb$ \033[0m

set output-radix 0x10
set input-radix 0x10

set height 0
set width 0

set disassembly-flavor att
