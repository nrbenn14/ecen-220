#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Tue Jan 25 14:07:02 MST 2022
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 9cf309b6948348f4b9677e5e88e9e6f8 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot FourFunctions_behav xil_defaultlib.FourFunctions xil_defaultlib.glbl -log elaborate.log"
xelab -wto 9cf309b6948348f4b9677e5e88e9e6f8 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot FourFunctions_behav xil_defaultlib.FourFunctions xil_defaultlib.glbl -log elaborate.log
