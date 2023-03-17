# This shell is designed to run Optuna optimization procedures in
# parallel in the background.
#
# Notes:
#   Include `wait` in between commands to do them in batches.
#   Run this in terminal via 'bash run_parallel.sh'.

#!/bin/bash

cd ~/Desktop/stock_analysis/
pwd
date

python lstm_optimization "OptTrial1" 20 & #1 
python lstm_optimization "OptTrial2" 20 & #2
python lstm_optimization "OptTrial3" 20 & #3
python lstm_optimization "OptTrial4" 20 & #4
wait
python lstm_optimization "OptTrial4" 20 & #5
python lstm_optimization "OptTrial4" 20 & #6
python lstm_optimization "OptTrial4" 20 & #7
python lstm_optimization "OptTrial4" 20 & #8
wait