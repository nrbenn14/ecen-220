restart

add_force clk {0 0} {1 5ns} -repeat_every 10ns
add_force reset 1
add_force start 0
run 10ns
add_force reset 0
run 10ns

# Draw ball at 100, 200
add_force x_in -radix dec 100
add_force y_in -radix dec 200
add_force start 1
run 120ns

# Lower start signal
add_force start 0
run 20ns

# Draw ball at 150, 20
add_force x_in -radix dec 150
add_force y_in -radix dec 20
add_force start 1
run 120ns