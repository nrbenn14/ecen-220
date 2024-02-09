restart

# itaration 1
add_force a 0
add_force b 0
add_force cin 0
run 10 ns

# iteration 2
add_force a 0
add_force b 0
add_force cin 1
run 10 ns

# itaration 3
add_force a 0
add_force b 1
add_force cin 0
run 10 ns

# iteration 4
add_force a 0
add_force b 1
add_force cin 1
run 10 ns

# itaration 5
add_force a 1
add_force b 0
add_force cin 0
run 10 ns

# iteration 6
add_force a 1
add_force b 0
add_force cin 1
run 10 ns

# iteration 7
add_force a 1
add_force b 1
add_force cin 0
run 10 ns

# iteration 8
add_force a 1
add_force b 1
add_force cin 1
run 10 ns