restart

add_force clk {0 0} {1 5ns} -repeat_every 10ns

add_force Reset 1
add_force Sin 1
add_force Received 0
run 100us

add_force Reset 0
run 100us

add_force Sin 0
run 52us

add_force Sin 1
run 468us

add_force Sin 1
add_force Received 1
run 100us

add_force Sin 0
add_force Received 0
run 52us

add_force Sin 1
run 52us

add_force Sin 0
run 104us

add_force Sin 1
run 208us

add_force Sin 0
run 52us

add_force Sin 1
run 52us

add_force Sin 1
add_force Received 1
run 100us