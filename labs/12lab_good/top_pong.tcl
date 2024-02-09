restart

add_force clk {0 0} {1 5ns} -repeat_every 10ns

add_force btnc 1
add_force btnu 0
add_force btnd 0
add_force btnl 0
add_force btnr 0
run 1us

add_force btnc 0
add_force btnu 1
add_force btnd 1
add_force btnl 1
add_force btnr 1
run 100us 