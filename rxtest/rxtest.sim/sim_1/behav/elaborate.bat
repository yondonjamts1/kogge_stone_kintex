@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto e3efca9c217b4e379473c9377bf91b2b -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot uart_tb_behav xil_defaultlib.uart_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
