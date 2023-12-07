#!/bin/bash
export ESESC=$HOME/build/main/esesc
export OBMINIMIZE=$HOME/install/bin/obminimize

# Download the required input file
# wget https://files.rcsb.org/download/1ab1.pdb

export ESESC_ReportFile="lab3_baseline"
export ESESC_BenchName="$OBMINIMIZE -o pdb -ff GAFF 1ab1.pdb"
$ESESC -c lab3_base_esesc.conf
$HOME/build/run/scripts/report.pl -l

export ESESC_ReportFile="lab3_final"
export ESESC_BenchName="$OBMINIMIZE -o pdb -ff GAFF 1ab1.pdb"
$ESESC -c lab3_final_esesc.conf
$HOME/build/run/scripts/report.pl -l