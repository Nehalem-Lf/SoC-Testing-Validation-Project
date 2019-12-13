@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 9c471ea0f0074ab48ffdb59540443f59 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot residue_tb_behav xil_defaultlib.residue_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
