restart

#iteration 1
add_force A {0 0ns}
add_force B {0 0ns}
add_force C {0 0ns}

run 10 ns

#iteration 2
add_force A {0 0ns}
add_force B {0 0ns}
add_force C {1 0ns}

run 10 ns

#iteration 3
add_force A {0 0ns}
add_force B {1 0ns}
add_force C {0 0ns}

run 10 ns

#iteration 4
add_force A {0 0ns}
add_force B {1 0ns}
add_force C {1 0ns}

run 10 ns

#iteration 5
add_force A {1 0ns}
add_force B {0 0ns}
add_force C {0 0ns}

run 10 ns

#iteration 6
add_force A {1 0ns}
add_force B {0 0ns}
add_force C {1 0ns}

run 10 ns

#iteration 7
add_force A {1 0ns}
add_force B {1 0ns}
add_force C {0 0ns}

run 10 ns

#iteration 8
add_force A {1 0ns}
add_force B {1 0ns}
add_force C {1 0ns}

run 10 ns