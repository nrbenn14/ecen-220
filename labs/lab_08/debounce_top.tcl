restart
run 100 ns


add_force clk {0 0} {1 5ns} -repeat_every 10ns

add_force btnu 1
add_force btnc 1
run 50 us

add_force btnu 0
add_force btnc 1
run 50 us

add_force btnc 0
run 50 us

add_force btnc 1
run 250 us

add_force btnc 0
run 250 us

add_force btnc 1
run 250 us

add_force btnc 0
run 250 us

add_force btnc 1
run 250 us

add_force btnc 0
run 50 us

add_force btnc 1
run 50 us