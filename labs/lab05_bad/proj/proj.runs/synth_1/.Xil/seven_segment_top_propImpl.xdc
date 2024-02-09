set_property SRC_FILE_INFO {cfile:/auto/fsi/nrbenn14/ECEn_220/labs/lab06/proj/seven_segment.tcl rfile:../../../seven_segment.tcl id:1 unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:/auto/fsi/nrbenn14/ECEn_220/labs/lab06/proj/synth.xdc rfile:../../../synth.xdc id:2} [current_design]
set_property SRC_FILE_INFO {cfile:/auto/fsi/nrbenn14/ECEn_220/labs/lab06/proj/seven_segment_top.tcl rfile:../../../seven_segment_top.tcl id:3 unmanaged:yes} [current_design]
set_property src_info {type:XDC file:1 line:1 export:INPUT save:NONE read:READ} [current_design]
restart
set_property src_info {type:XDC file:1 line:3 export:INPUT save:NONE read:READ} [current_design]
add_force data 0000
set_property src_info {type:XDC file:1 line:4 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:1 line:6 export:INPUT save:NONE read:READ} [current_design]
add_force data 0001
set_property src_info {type:XDC file:1 line:7 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:1 line:9 export:INPUT save:NONE read:READ} [current_design]
add_force data 0010
set_property src_info {type:XDC file:1 line:10 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:1 line:12 export:INPUT save:NONE read:READ} [current_design]
add_force data 0011
set_property src_info {type:XDC file:1 line:13 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:1 line:15 export:INPUT save:NONE read:READ} [current_design]
add_force data 0100
set_property src_info {type:XDC file:1 line:16 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:1 line:18 export:INPUT save:NONE read:READ} [current_design]
add_force data 0101
set_property src_info {type:XDC file:1 line:19 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:1 line:21 export:INPUT save:NONE read:READ} [current_design]
add_force data 0110
set_property src_info {type:XDC file:1 line:22 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:1 line:24 export:INPUT save:NONE read:READ} [current_design]
add_force data 0111
set_property src_info {type:XDC file:1 line:25 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:1 line:27 export:INPUT save:NONE read:READ} [current_design]
add_force data 1000
set_property src_info {type:XDC file:1 line:28 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:1 line:30 export:INPUT save:NONE read:READ} [current_design]
add_force data 1001
set_property src_info {type:XDC file:1 line:31 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:1 line:33 export:INPUT save:NONE read:READ} [current_design]
add_force data 1010
set_property src_info {type:XDC file:1 line:34 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:1 line:36 export:INPUT save:NONE read:READ} [current_design]
add_force data 1011
set_property src_info {type:XDC file:1 line:37 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:1 line:39 export:INPUT save:NONE read:READ} [current_design]
add_force data 1100
set_property src_info {type:XDC file:1 line:40 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:1 line:42 export:INPUT save:NONE read:READ} [current_design]
add_force data 1101
set_property src_info {type:XDC file:1 line:43 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:1 line:45 export:INPUT save:NONE read:READ} [current_design]
add_force data 1110
set_property src_info {type:XDC file:1 line:46 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:1 line:48 export:INPUT save:NONE read:READ} [current_design]
add_force data 1111
set_property src_info {type:XDC file:1 line:49 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:2 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { btnc }];
set_property src_info {type:XDC file:2 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { sw[0] }];
set_property src_info {type:XDC file:2 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { sw[1] }];
set_property src_info {type:XDC file:2 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports { sw[2] }];
set_property src_info {type:XDC file:2 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W17   IOSTANDARD LVCMOS33 } [get_ports { sw[3] }];
set_property src_info {type:XDC file:2 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W7    IOSTANDARD LVCMOS33 } [get_ports { segment[0] }];
set_property src_info {type:XDC file:2 line:62 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W6    IOSTANDARD LVCMOS33 } [get_ports { segment[1] }];
set_property src_info {type:XDC file:2 line:63 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U8    IOSTANDARD LVCMOS33 } [get_ports { segment[2] }];
set_property src_info {type:XDC file:2 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V8    IOSTANDARD LVCMOS33 } [get_ports { segment[3] }];
set_property src_info {type:XDC file:2 line:65 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U5    IOSTANDARD LVCMOS33 } [get_ports { segment[4] }];
set_property src_info {type:XDC file:2 line:66 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V5    IOSTANDARD LVCMOS33 } [get_ports { segment[5] }];
set_property src_info {type:XDC file:2 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U7    IOSTANDARD LVCMOS33 } [get_ports { segment[6] }];
set_property src_info {type:XDC file:2 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V7    IOSTANDARD LVCMOS33 } [get_ports { segment[7] }];
set_property src_info {type:XDC file:2 line:69 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U2    IOSTANDARD LVCMOS33 } [get_ports { anode[0] }];
set_property src_info {type:XDC file:2 line:70 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U4    IOSTANDARD LVCMOS33 } [get_ports { anode[1] }];
set_property src_info {type:XDC file:2 line:71 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V4    IOSTANDARD LVCMOS33 } [get_ports { anode[2] }];
set_property src_info {type:XDC file:2 line:72 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W4    IOSTANDARD LVCMOS33 } [get_ports { anode[3] }];
set_property src_info {type:XDC file:3 line:1 export:INPUT save:NONE read:READ} [current_design]
restart
set_property src_info {type:XDC file:3 line:3 export:INPUT save:NONE read:READ} [current_design]
add_force btnc 0
set_property src_info {type:XDC file:3 line:5 export:INPUT save:NONE read:READ} [current_design]
add_force sw 0000
set_property src_info {type:XDC file:3 line:6 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:8 export:INPUT save:NONE read:READ} [current_design]
add_force sw 0001
set_property src_info {type:XDC file:3 line:9 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:11 export:INPUT save:NONE read:READ} [current_design]
add_force sw 0010
set_property src_info {type:XDC file:3 line:12 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:14 export:INPUT save:NONE read:READ} [current_design]
add_force sw 0011
set_property src_info {type:XDC file:3 line:15 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:17 export:INPUT save:NONE read:READ} [current_design]
add_force sw 0100
set_property src_info {type:XDC file:3 line:18 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:20 export:INPUT save:NONE read:READ} [current_design]
add_force sw 0101
set_property src_info {type:XDC file:3 line:21 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:23 export:INPUT save:NONE read:READ} [current_design]
add_force sw 0110
set_property src_info {type:XDC file:3 line:24 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:26 export:INPUT save:NONE read:READ} [current_design]
add_force sw 0111
set_property src_info {type:XDC file:3 line:27 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:29 export:INPUT save:NONE read:READ} [current_design]
add_force sw 1000
set_property src_info {type:XDC file:3 line:30 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:32 export:INPUT save:NONE read:READ} [current_design]
add_force sw 1001
set_property src_info {type:XDC file:3 line:33 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:35 export:INPUT save:NONE read:READ} [current_design]
add_force sw 1010
set_property src_info {type:XDC file:3 line:36 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:38 export:INPUT save:NONE read:READ} [current_design]
add_force sw 1011
set_property src_info {type:XDC file:3 line:39 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:41 export:INPUT save:NONE read:READ} [current_design]
add_force sw 1100
set_property src_info {type:XDC file:3 line:42 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:44 export:INPUT save:NONE read:READ} [current_design]
add_force sw 1101
set_property src_info {type:XDC file:3 line:45 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:47 export:INPUT save:NONE read:READ} [current_design]
add_force sw 1110
set_property src_info {type:XDC file:3 line:48 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:50 export:INPUT save:NONE read:READ} [current_design]
add_force sw 1111
set_property src_info {type:XDC file:3 line:51 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:53 export:INPUT save:NONE read:READ} [current_design]
add_force btnc 1
set_property src_info {type:XDC file:3 line:55 export:INPUT save:NONE read:READ} [current_design]
add_force sw 0000
set_property src_info {type:XDC file:3 line:56 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:58 export:INPUT save:NONE read:READ} [current_design]
add_force sw 0001
set_property src_info {type:XDC file:3 line:59 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:61 export:INPUT save:NONE read:READ} [current_design]
add_force sw 0010
set_property src_info {type:XDC file:3 line:62 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:64 export:INPUT save:NONE read:READ} [current_design]
add_force sw 0011
set_property src_info {type:XDC file:3 line:65 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:67 export:INPUT save:NONE read:READ} [current_design]
add_force sw 0100
set_property src_info {type:XDC file:3 line:68 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:70 export:INPUT save:NONE read:READ} [current_design]
add_force sw 0101
set_property src_info {type:XDC file:3 line:71 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:73 export:INPUT save:NONE read:READ} [current_design]
add_force sw 0110
set_property src_info {type:XDC file:3 line:74 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:76 export:INPUT save:NONE read:READ} [current_design]
add_force sw 0111
set_property src_info {type:XDC file:3 line:77 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:79 export:INPUT save:NONE read:READ} [current_design]
add_force sw 1000
set_property src_info {type:XDC file:3 line:80 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:82 export:INPUT save:NONE read:READ} [current_design]
add_force sw 1001
set_property src_info {type:XDC file:3 line:83 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:85 export:INPUT save:NONE read:READ} [current_design]
add_force sw 1010
set_property src_info {type:XDC file:3 line:86 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:88 export:INPUT save:NONE read:READ} [current_design]
add_force sw 1011
set_property src_info {type:XDC file:3 line:89 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:91 export:INPUT save:NONE read:READ} [current_design]
add_force sw 1100
set_property src_info {type:XDC file:3 line:92 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:94 export:INPUT save:NONE read:READ} [current_design]
add_force sw 1101
set_property src_info {type:XDC file:3 line:95 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:97 export:INPUT save:NONE read:READ} [current_design]
add_force sw 1110
set_property src_info {type:XDC file:3 line:98 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
set_property src_info {type:XDC file:3 line:100 export:INPUT save:NONE read:READ} [current_design]
add_force sw 1111
set_property src_info {type:XDC file:3 line:101 export:INPUT save:NONE read:READ} [current_design]
run 10 ns
