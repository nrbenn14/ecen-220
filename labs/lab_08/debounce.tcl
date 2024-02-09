restart
run 100 ns

add_force clk {0 0} {1 5ns} -repeat_every 10ns
run 30 ns

add_force reset 0
add_force noisy 1
run 1 ms

add_force reset 1
add_force noisy 0
run 50 us

add_force reset 0
add_force noisy 1
run 2 ms

add_force reset 0
add_force noisy 0
run 50 us

add_force reset 0
add_force noisy 1
run 20 us

add_force reset 0
add_force noisy 0
run 1 ms

add_force reset 1
add_force noisy 0
run 40 us

add_force reset 0
add_force noisy 1
run 7 ms

add_force reset 0
add_force noisy 0
run 2 ms