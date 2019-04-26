set_property SRC_FILE_INFO {cfile:C:/Users/PC/F-4/uarttest2/uarttest2.srcs/constrs_1/new/usrc.xdc rfile:../../../uarttest2.srcs/constrs_1/new/usrc.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AD11  IOSTANDARD LVDS     } [get_ports { clk_n }]; #IO_L12N_T1_MRCC_33 Sch=sysclk_n
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AD12  IOSTANDARD LVDS     } [get_ports { clk_p }]; #IO_L12P_T1_MRCC_33 Sch=sysclk_p
set_property src_info {type:XDC file:1 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T28   IOSTANDARD LVCMOS33 } [get_ports { o_TX_Active }]; #IO_L11N_T1_SRCC_14 Sch=led[0]
set_property src_info {type:XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V19   IOSTANDARD LVCMOS33 } [get_ports { o_TX_Done }]; #IO_L19P_T3_A10_D26_14 Sch=led[1]
set_property src_info {type:XDC file:1 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G19   IOSTANDARD LVCMOS12 } [get_ports { swcheck }]; #IO_0_17 Sch=sw[0]
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H24   IOSTANDARD LVCMOS12 } [get_ports { i_TX_DV }]; #IO_L19P_T3_16 Sch=sw[2]
set_property src_info {type:XDC file:1 line:42 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN Y23   IOSTANDARD LVCMOS33 } [get_ports { o_TX_Serial }]; #IO_L1P_T0_12 Sch=uart_rx_out
