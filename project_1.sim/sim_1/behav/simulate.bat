@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim fftester_behav -key {Behavioral:sim_1:Functional:fftester} -tclbatch fftester.tcl -view C:/Users/PC/F-4/tester_behav.wcfg -view C:/Users/PC/F-4/tester_behav1.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
