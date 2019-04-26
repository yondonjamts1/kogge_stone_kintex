# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7k325tffg900-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/PC/F-4/Uarttest/Uarttest.cache/wt [current_project]
set_property parent.project_path C:/Users/PC/F-4/Uarttest/Uarttest.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:genesys2:part0:1.1 [current_project]
set_property ip_output_repo c:/Users/PC/F-4/Uarttest/Uarttest.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib C:/Users/PC/F-4/Uarttest/Uarttest.srcs/sources_1/new/Uarttest.vhd
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/PC/F-4/Uarttest/Uarttest.srcs/constrs_1/new/usr.xdc
set_property used_in_implementation false [get_files C:/Users/PC/F-4/Uarttest/Uarttest.srcs/constrs_1/new/usr.xdc]


synth_design -top UART_TX -part xc7k325tffg900-2


write_checkpoint -force -noxdef UART_TX.dcp

catch { report_utilization -file UART_TX_utilization_synth.rpt -pb UART_TX_utilization_synth.pb }