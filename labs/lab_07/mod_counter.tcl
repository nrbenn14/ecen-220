restart
run 100 ns

add_force clk {0 0} {1 5ns} -repeat_every 10ns
run 30 ns


add_force reset 0
add_force increment 0
run 30 ns

add_force reset 0
add_force increment 1
run 60 ns

add_force reset 1
add_force increment 1
run 40 ns

add_force reset 1
add_force increment 0
run 50 ns

add_force reset 0
add_force increment 1
run 20 ns

add_force reset 1
add_force increment 0
run 10 ns

add_force reset 0
add_force increment 1
run 300 ns