@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Sun Jan 12 10:59:13 +0530 2025
REM SW Build 2902540 on Wed May 27 19:54:49 MDT 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim Eight_bit_carry_select_adder_behav -key {Behavioral:sim_1:Functional:Eight_bit_carry_select_adder} -tclbatch Eight_bit_carry_select_adder.tcl -log simulate.log"
call xsim  Eight_bit_carry_select_adder_behav -key {Behavioral:sim_1:Functional:Eight_bit_carry_select_adder} -tclbatch Eight_bit_carry_select_adder.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
