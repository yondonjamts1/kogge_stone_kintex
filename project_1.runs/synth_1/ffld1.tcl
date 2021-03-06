# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7k325tffg900-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/yondo/Documents/vivado_projects/F-4/project_1.cache/wt [current_project]
set_property parent.project_path C:/Users/yondo/Documents/vivado_projects/F-4/project_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:genesys2:part0:1.1 [current_project]
set_property ip_output_repo c:/Users/yondo/Documents/vivado_projects/F-4/project_1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/yondo/Documents/vivado_projects/F-4/project_1.srcs/sources_1/new/adder.vhd
  C:/Users/yondo/Documents/vivado_projects/F-4/project_1.srcs/sources_1/imports/new/ffld1.vhd
  C:/Users/yondo/Documents/vivado_projects/F-4/project_1.srcs/sources_1/new/Comp.vhd
  C:/Users/yondo/Documents/vivado_projects/F-4/project_1.srcs/sources_1/new/uart_tx.vhd
  C:/Users/yondo/Documents/vivado_projects/F-4/project_1.srcs/sources_1/new/uart_rx.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/yondo/Documents/vivado_projects/F-4/project_1.srcs/constrs_1/new/cons.xdc
set_property used_in_implementation false [get_files C:/Users/yondo/Documents/vivado_projects/F-4/project_1.srcs/constrs_1/new/cons.xdc]


synth_design -top ffld1 -part xc7k325tffg900-2


write_checkpoint -force -noxdef ffld1.dcp

catch { report_utilization -file ffld1_utilization_synth.rpt -pb ffld1_utilization_synth.pb }
