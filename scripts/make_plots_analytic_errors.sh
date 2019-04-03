#!/bin/sh

PLOT=tools/plot.py
OUT_DIR="--output-dir=data/results/plots/analytical_errors"

if [[ $2 -eq 1 ]]; then
  SAVE="--quiet --save"
fi


if [[ $1 -eq 1 ]]; then
  # DATA="data/results/const_ratio_small.json"
  DATA="data/results/analytical_errors_V30.json"
elif [[ $1 -eq 2 ]]; then
  DATA="data/results/analytical_errors_V300.json"
elif [[ $1 -eq 3 ]]; then
  DATA="data/results/analytical_errors_V3000.json"
fi
GROUP="--groups=\"('G0',)\""
RANGE="--x_max=2.4 --x_min=0.7"

$PLOT $DATA $OUT_DIR -x4 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(1,0),(2,0)" --y_min=-0.3 --y_max=0.3  -n_50percent_range_similarity ${SAVE} &
$PLOT $DATA $OUT_DIR -x4 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(4,3),(5,3)" --y_min=-0.3 --y_max=0.3  -n_50percent_range_similarity ${SAVE} &
$PLOT $DATA $OUT_DIR -x4 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(7,6),(8,6)" --y_min=-0.3 --y_max=0.3  -n_50percent_range_similarity ${SAVE} &
$PLOT $DATA $OUT_DIR -x4 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(10,9),(11,9)" --y_min=-0.3 --y_max=0.3  -n_50percent_range_similarity ${SAVE} &
$PLOT $DATA $OUT_DIR -x4 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(13,12),(14,12)" --y_min=-0.3 --y_max=0.3  -n_50percent_range_similarity ${SAVE} &
$PLOT $DATA $OUT_DIR -x4 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(16,15),(17,15)" --y_min=-0.3 --y_max=0.3  -n_50percent_range_similarity ${SAVE} &

$PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block ${GROUP} ${RANGE} --pairs="(1,0),(2,0)" --y_min=-200 --y_max=200  -n_50percent_range_similarity ${SAVE} &
$PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block ${GROUP} ${RANGE} --pairs="(4,3),(5,3)" --y_min=-200 --y_max=200  -n_50percent_range_similarity ${SAVE} &
$PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block ${GROUP} ${RANGE} --pairs="(7,6),(8,6)" --y_min=-200 --y_max=200  -n_50percent_range_similarity ${SAVE} &
$PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block ${GROUP} ${RANGE} --pairs="(10,9),(11,9)" --y_min=-200 --y_max=200  -n_50percent_range_similarity ${SAVE} &
$PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block ${GROUP} ${RANGE} --pairs="(13,12),(14,12)" --y_min=-200 --y_max=200  -n_50percent_range_similarity ${SAVE} &
$PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block ${GROUP} ${RANGE} --pairs="(16,15),(17,15)" --y_min=-200 --y_max=200  -n_50percent_range_similarity ${SAVE} &

$PLOT $DATA $OUT_DIR -x4 -y4 --normal -p P_block ${GROUP} ${RANGE} -n_50percent_range_similarity ${SAVE} &
$PLOT $DATA $OUT_DIR -x4 -y4 --normal -p P_block ${GROUP} ${RANGE}  -n_50percent_range_similarity ${SAVE} &
$PLOT $DATA $OUT_DIR -x4 -y4 --normal -p P_block ${GROUP} ${RANGE}  -n_50percent_range_similarity ${SAVE} &
$PLOT $DATA $OUT_DIR -x4 -y4 --normal -p P_block ${GROUP} ${RANGE}  -n_50percent_range_similarity ${SAVE} &
$PLOT $DATA $OUT_DIR -x4 -y4 --normal -p P_block ${GROUP} ${RANGE}  -n_50percent_range_similarity ${SAVE} &
$PLOT $DATA $OUT_DIR -x4 -y4 --normal -p P_block ${GROUP} ${RANGE}  -n_50percent_range_similarity ${SAVE} &



