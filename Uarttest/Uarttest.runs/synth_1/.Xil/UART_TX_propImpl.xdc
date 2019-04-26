set_property SRC_FILE_INFO {cfile:C:/Users/PC/F-4/Uarttest/Uarttest.srcs/constrs_1/new/usr.xdc rfile:../../../Uarttest.srcs/constrs_1/new/usr.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AD11  IOSTANDARD LVDS     } [get_ports { clk_n }]; #IO_L12N_T1_MRCC_33 Sch=sysclk_n
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AD12  IOSTANDARD LVDS     } [get_ports { clk_p }]; #IO_L12P_T1_MRCC_33 Sch=sysclk_p
set_property src_info {type:XDC file:1 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G19   IOSTANDARD LVCMOS12 } [get_ports { swcheck }]; #IO_0_17 Sch=sw[0]
set_property src_info {type:XDC file:1 line:43 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN Y23   IOSTANDARD LVCMOS33 } [get_ports { tx }]; #IO_L1P_T0_12 Sch=uart_rx_out
set_property src_info {type:XDC file:1 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN Y20   IOSTANDARD LVCMOS33 } [get_ports { rx }]; #IO_0_12 Sch=uart_tx_in
