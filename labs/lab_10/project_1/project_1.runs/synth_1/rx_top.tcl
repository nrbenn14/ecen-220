# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
set_param chipscope.maxJobs 3
set_msg_config  -id {Synth 8-87}  -new_severity {ERROR} 
set_msg_config  -id {Timing 38-313}  -new_severity {WARNING} 
set_msg_config  -id {Constraints 18-5210}  -suppress 
set_msg_config  -id {Synth 8-327}  -new_severity {ERROR} 
set_msg_config  -id {Synth 8-3352}  -new_severity {ERROR} 
set_msg_config  -id {Synth 8-5559}  -new_severity {ERROR} 
set_msg_config  -id {Synth 8-6090}  -new_severity {ERROR} 
set_msg_config  -id {Synth 8-6858}  -new_severity {ERROR} 
set_msg_config  -id {Synth 8-6859}  -new_severity {ERROR} 
set_msg_config  -id {Timing 38-282}  -new_severity {ERROR} 
set_msg_config  -id {VRFC 10-3091}  -new_severity {ERROR} 
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /auto/fsi/nrbenn14/ECEn_220/labs/lab_10/project_1/project_1.cache/wt [current_project]
set_property parent.project_path /auto/fsi/nrbenn14/ECEn_220/labs/lab_10/project_1/project_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /auto/fsi/nrbenn14/ECEn_220/labs/lab_10/project_1/project_1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib -sv {
  /auto/fsi/nrbenn14/ECEn_220/labs/lab_10/project_1/SevenSegmentDisplay.sv
  /auto/fsi/nrbenn14/ECEn_220/labs/lab_10/project_1/mod_counter.sv
  /auto/fsi/nrbenn14/ECEn_220/labs/lab_10/project_1/rx.sv
  /auto/fsi/nrbenn14/ECEn_220/labs/lab_10/project_1/rx_top.sv
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /auto/fsi/nrbenn14/ECEn_220/labs/lab_10/project_1/synth.xdc
set_property used_in_implementation false [get_files /auto/fsi/nrbenn14/ECEn_220/labs/lab_10/project_1/synth.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top rx_top -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef rx_top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file rx_top_utilization_synth.rpt -pb rx_top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
