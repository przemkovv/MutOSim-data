#!/bin/sh

PLOT=tools/plot.py
OUT_DIR="--output-dir=data/results/plots/analytical_errors"

if [[ $2 -eq 1 ]]; then
  SAVE="--quiet --save"
fi


if [[ $1 -eq 1 ]]; then
  # DATA="data/results/const_ratio_small.json"
  DATA="data/results/analytical_errors_V3000.json"
  GROUP="--groups=\"('G0',)\""
  RANGE="--x_max=2.4 --x_min=0.7"

  # $PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(1,0),(2,0),(4,3),(5,3)" --y_min=50 --y_max=150  -n_50percent_range_similarity ${SAVE} 
  # $PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(7,6),(8,6),(10,9),(11,9)" --y_min=50 --y_max=150  -n_50percent_range_similarity ${SAVE}
  # $PLOT $DATA $OUT_DIR -x4 -y1 --normal -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 -i0,1,2 -n_60 ${SAVE} &
  # $PLOT $DATA $OUT_DIR -x4 -y1 --normal -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 -i3,4,5 -n_600 ${SAVE} &
  # $PLOT $DATA $OUT_DIR -x4 -y1 --normal -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 -i6,7,8 -n_6000 ${SAVE} &
  # $PLOT $DATA $OUT_DIR -x4 -y1 --normal -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 -i9,10,11 -n_60000 ${SAVE} &
  # $PLOT $DATA $OUT_DIR -x4 -y1 --relatives-diffs --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(13,12),(14,12)" --y_min=-0.5 --y_max=0.5  -n_50percent_range_similarity ${SAVE} 

  $PLOT $DATA $OUT_DIR -x4 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(1,0),(2,0)" --y_min=-0.3 --y_max=0.3  -n_50percent_range_similarity ${SAVE} &
  $PLOT $DATA $OUT_DIR -x4 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(4,3),(5,3)" --y_min=-0.3 --y_max=0.3  -n_50percent_range_similarity ${SAVE} &
  $PLOT $DATA $OUT_DIR -x4 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(7,6),(8,6)" --y_min=-0.3 --y_max=0.3  -n_50percent_range_similarity ${SAVE} &
  $PLOT $DATA $OUT_DIR -x4 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(10,9),(11,9)" --y_min=-0.3 --y_max=0.3  -n_50percent_range_similarity ${SAVE} &
  $PLOT $DATA $OUT_DIR -x4 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(13,12),(14,12)" --y_min=-0.3 --y_max=0.3  -n_50percent_range_similarity ${SAVE} &
  $PLOT $DATA $OUT_DIR -x4 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(16,15),(17,15)" --y_min=-0.3 --y_max=0.3  -n_50percent_range_similarity ${SAVE} &

  # $PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block ${GROUP} ${RANGE} --pairs="(1,0),(2,0)" --y_min=0 --y_max=200  -n_50percent_range_similarity ${SAVE} &
  # $PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block ${GROUP} ${RANGE} --pairs="(4,3),(5,3)" --y_min=0 --y_max=200  -n_50percent_range_similarity ${SAVE} &
  # $PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block ${GROUP} ${RANGE} --pairs="(7,6),(8,6)" --y_min=0 --y_max=200  -n_50percent_range_similarity ${SAVE} &
  # $PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block ${GROUP} ${RANGE} --pairs="(10,9),(11,9)" --y_min=0 --y_max=200  -n_50percent_range_similarity ${SAVE} &


fi

