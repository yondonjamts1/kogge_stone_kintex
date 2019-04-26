@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 1685a0e6e80c48dbbb50880b8662d37c -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot fftester_behav xil_defaultlib.fftester -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
