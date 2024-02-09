restart

# set inputs low
add_force LOAD 0
add_force DIN 0

# add oscillating clock input with 10ns period
add_force CLK {0 0} {1 5ns} -repeat_every 10ns

# run for 100ns so the FDCE can properly reset
run 100 ns

# load a 0
add_force LOAD 1
run 20ns
add_force LOAD 0

# change DIN and run some time
# notice that the register doesn't
# load this new value because
# the load signal is low
add_force DIN 0010
run 18ns

# now load the register
add_force LOAD 1
run 10ns
add_force LOAD 0
add_force DIN 0000
run 10ns

# now apply various data
# input values and watch
# the register load them
# on succeeding clock edges
add_force DIN 1101
run 10ns
add_force LOAD 1
run 10ns
add_force DIN 0011
run 10ns
run 10ns
run 10ns
add_force DIN 1111
run 10ns
run 10ns
add_force DIN 0101