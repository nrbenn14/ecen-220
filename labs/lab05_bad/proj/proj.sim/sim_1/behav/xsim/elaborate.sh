#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Fri Feb 11 16:52:00 MST 2022
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 7f50493bc4664792af66527316b2286e --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot seven_segment_top_behav xil_defaultlib.seven_segment_top xil_defaultlib.glbl -log elaborate.log"
xelab -wto 7f50493bc4664792af66527316b2286e --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot seven_segment_top_behav xil_defaultlib.seven_segment_top xil_defaultlib.glbl -log elaborate.log

