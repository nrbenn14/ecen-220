# 
# Report generation script generated by Vivado
# 

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
proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

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

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_param xicom.use_bs_reader 1
  set_param chipscope.maxJobs 3
  open_checkpoint codebreaker_serial_top_routed.dcp
  set_property webtalk.parent_dir /auto/fsi/nrbenn14/ECEn_220/labs/lab_09/lab_09.cache/wt [current_project]
  catch { write_mem_info -force codebreaker_serial_top.mmi }
  write_bitstream -force codebreaker_serial_top.bit 
  catch {write_debug_probes -quiet -force codebreaker_serial_top}
  catch {file copy -force codebreaker_serial_top.ltx debug_nets.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}
