restart

add_force clk {0 0} {1 5ns} -repeat_every 10ns
run 500 ns

add_force btnc 0
add_force btnu 1
run 200 ns

add_force btnc 1
add_force btnu 0
run 2000 us

