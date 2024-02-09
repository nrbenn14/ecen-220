restart
run 100 ns

add_force clk {0 0} {1 5ns} -repeat_every 10ns
run 30 ns

add_force run 1
add_force reset 0
run 30 ns

add_force run 1
add_force reset 0
run 300 ns

add_force run 0
add_force reset 1
run 30 ns

add_force run 1
add_force reset 0
run 120 ms