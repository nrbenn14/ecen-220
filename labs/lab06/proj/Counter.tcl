restart

# clear
add_force CLR 1
add_force INC 0

# add oscillating clock input with 10ns period
add_force CLK {0 0} {1 5ns} -repeat_every 10ns

# run for 100ns so the FDCE can properly reset
run 100 ns

# increment for 3 cycles
add_force CLR 0
add_force INC 1
run 30ns

# clear for 2 cycles
add_force CLR 1
add_force INC 0
run 20ns

# run for 20 cycles
add_force CLR 0
add_force INC 1
run 20ns

add_force INC 0
run 20ns

add_force CLR 1
add_force INC 1
run 20ns

add_force CLR 0
add_force INC 0
run 20ns

add_force CLR 0
add_force INC 1
run 40ns

add_force INC 0
run 10ns

add_force INC 1
run 10ns

add_force INC 0
run 60ns