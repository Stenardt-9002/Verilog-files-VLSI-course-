The following files are for single precision floating multiplier

tbmain_1.v contains testbench
run

iverilog main.v tbmain_1.v -o jk1
./jk1



BUG
In case of underflow or overflow no action is taken except console log error
