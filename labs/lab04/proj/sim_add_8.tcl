restart

# test 1 - adding negative to positive 8-bit 2s binary
add_force a 11000101
add_force b 00110110
add_force cin 0
run 10 ns

# test 2 - adding 2 positive w/o overflow
add_force a 00010101
add_force b 01010011
add_force cin 0
run 10 ns

#test 3 - adding 2 positive w overflow
add_force a 01001101
add_force b 01101010
add_force cin 0
run 10 ns

# test 4 - adding 2 negative w/o overflow
add_force a 11101011
add_force b 11011001
add_force cin 0
run 10 ns

# test 5 - adding 2 negative w/ overflow
add_force a 10010011
add_force b 11001001
add_force cin 0
run 10 ns