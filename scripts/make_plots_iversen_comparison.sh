#!/bin/sh

PLOT=tools/plot.py
OUT_DIR="--output-dir=data/results/plots/analytical"

if [[ $2 -eq 1 ]]; then
  SAVE="--quiet --save"
fi

if [[ $1 -eq 1 ]]; then
  DATA="data/results/const_ratio_126.json"
  $PLOT $DATA $OUT_DIR -x2 -y2 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(0,1),(2,3),(4,5),(6,7)" --y_min=50 --y_max=150  -n_50percent_range_similarity ${SAVE} &
  $PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(0,1),(2,3),(4,5),(6,7)" --y_min=97 --y_max=103 -n _3percent_range_similarity $SAVE &
  $PLOT $DATA $OUT_DIR -x2 -y3 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(0,2),(2,4),(4,6),(1,3),(3,5),(5,7)" --y_min=50 --y_max=150  -n_50percent_range_convergence $SAVE &
  # $PLOT $DATA $OUT_DIR -x2 -y3 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(0,2),(2,4),(4,6),(1,3),(3,5),(5,7)" --y_min=98 --y_max=102 -n _2percent_range_convergence $SAVE
  $PLOT $DATA $OUT_DIR -x3 -y1 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(0,2),(2,4),(4,6)" --y_min=97 --y_max=103 -n _3percent_range_convergence_const $SAVE &
  $PLOT $DATA $OUT_DIR -x3 -y1 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(1,3),(3,5),(5,7)" --y_min=97 --y_max=103 -n _3percent_range_convergence_var $SAVE &
fi

if [[ $1 -eq 2 ]]; then
  DATA="data/results/var_ratio.json"
  $PLOT $DATA $OUT_DIR -x3 -y1 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(0,1),(2,3),(4,5)," --y_min=50 --y_max=150  -n_50percent_range_similarity $SAVE &
  $PLOT $DATA $OUT_DIR -x3 -y1 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(0,1),(2,3),(4,5)," --y_min=97 --y_max=103 -n _3percent_range_similarity $SAVE &
fi
if [[ $1 -eq 3 ]]; then
  DATA="data/results/var_ratio.json"
  $PLOT $DATA -x1 -y1 --normal -p P_block -i0 --groups="('G0',)" --x_max=1.6 --x_min=0.4 -n_0 $SAVE
  # $PLOT $DATA -x1 -y1 --normal -p P_block -i1 --groups="('G0',)" --x_max=1.6 --x_min=0.4 -n_1 $SAVE
  $PLOT $DATA -x1 -y1 --normal -p P_block -i2 --groups="('G0',)" --x_max=1.6 --x_min=0.4 -n_2 $SAVE
  # $PLOT $DATA -x1 -y1 --normal -p P_block -i3 --groups="('G0',)" --x_max=1.6 --x_min=0.4 -n_3 $SAVE
  # $PLOT $DATA -x1 -y1 --normal -p P_block -i4 --groups="('G0',)" --x_max=1.6 --x_min=0.4 -n_4 $SAVE
  # $PLOT $DATA -x1 -y1 --normal -p P_block -i5 --groups="('G0',)" --x_max=1.6 --x_min=0.4 -n_5 $SAVE
  # $PLOT $DATA -x1 -y1 --normal -p P_block -i6 --groups="('G0',)" --x_max=1.6 --x_min=0.4 -n_6 $SAVE
  # $PLOT $DATA -x1 -y1 --normal -p P_block -i7 --groups="('G0',)" --x_max=1.6 --x_min=0.4 -n_7 $SAVE
fi

if [[ $1 -eq 4 ]]; then
  # DATA="data/results/const_ratio_small.json"
  DATA="data/results/const_ratio_126_wo_interp.json"
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

  $PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block ${GROUP} ${RANGE} --pairs="(1,0),(2,0)" --y_min=0 --y_max=200  -n_50percent_range_similarity ${SAVE} &
  $PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block ${GROUP} ${RANGE} --pairs="(4,3),(5,3)" --y_min=0 --y_max=200  -n_50percent_range_similarity ${SAVE} &
  $PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block ${GROUP} ${RANGE} --pairs="(7,6),(8,6)" --y_min=0 --y_max=200  -n_50percent_range_similarity ${SAVE} &
  $PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block ${GROUP} ${RANGE} --pairs="(10,9),(11,9)" --y_min=0 --y_max=200  -n_50percent_range_similarity ${SAVE} &


fi

if [[ $1 -eq 6 ]]; then
  # DATA="data/results/const_ratio_small.json"
  DATA="data/results/const_ratio_13.json"
  DATA="data/results/const_ratio_13_wo_interp.json"
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

  $PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block ${GROUP} ${RANGE} --pairs="(1,0),(2,0)" --y_min=0 --y_max=200  -n_50percent_range_similarity ${SAVE} &
  $PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block ${GROUP} ${RANGE} --pairs="(4,3),(5,3)" --y_min=0 --y_max=200  -n_50percent_range_similarity ${SAVE} &
  $PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block ${GROUP} ${RANGE} --pairs="(7,6),(8,6)" --y_min=0 --y_max=200  -n_50percent_range_similarity ${SAVE} &
  $PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block ${GROUP} ${RANGE} --pairs="(10,9),(11,9)" --y_min=0 --y_max=200  -n_50percent_range_similarity ${SAVE} &

  $PLOT $DATA $OUT_DIR -x4 -y1 --normal --linear -p peakedness ${GROUP} ${RANGE} --y_min=0 --y_max=2 -i7,10 -n_60 ${SAVE} &
  $PLOT $DATA $OUT_DIR -x4 -y1 --normal --linear -p peakedness ${GROUP} ${RANGE} --y_min=0 --y_max=2 -i1,4 -n_60 ${SAVE} &
  $PLOT $DATA $OUT_DIR -x4 -y1 --normal --linear -p peakedness ${GROUP} ${RANGE} --y_min=0 --y_max=2 -i2,5 -n_60 ${SAVE} &
  $PLOT $DATA $OUT_DIR -x4 -y1 --normal --linear -p peakedness ${GROUP} ${RANGE} --y_min=0 --y_max=2 -i8,11 -n_60 ${SAVE} &
  # $PLOT $DATA $OUT_DIR -x4 -y1 --normal --linear -p variance ${GROUP} ${RANGE} --y_min=0 --y_max=20 -i1,2 -n_60 ${SAVE} &
  # $PLOT $DATA $OUT_DIR -x4 -y1 --normal --linear -p mean ${GROUP} ${RANGE}  --y_min=0 --y_max=20 -i1,2 -n_60 ${SAVE} &
  # $PLOT $DATA $OUT_DIR -x4 -y1 --normal --linear -p fictious_capacity ${GROUP} ${RANGE}  --y_min=0 --y_max=20 -i1,2 -n_60 ${SAVE} &

fi

if [[ $1 -eq 5 ]]; then
  # DATA="data/results/const_ratio_small.json"
  DATA="data/results/const_ratio.json"
  # $PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(1,0),(2,0),(4,3),(5,3)" --y_min=50 --y_max=150  -n_50percent_range_similarity ${SAVE} 
  # $PLOT $DATA $OUT_DIR -x4 -y1 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(7,6),(8,6),(10,9),(11,9)" --y_min=50 --y_max=150  -n_50percent_range_similarity ${SAVE}
  set -x
  GROUP="--groups=\"('G0',)\""
  RANGE="--x_max=2.4 --x_min=0.7"

  # $PLOT $DATA $OUT_DIR -x4 -y1 --normal --linear -p peakedness ${GROUP} ${RANGE} --y_min=0 --y_max=2 -i1,2 -n_60 ${SAVE} &
  # $PLOT $DATA $OUT_DIR -x4 -y1 --normal --linear -p variance ${GROUP} ${RANGE} --y_min=0 --y_max=20 -i1,2 -n_60 ${SAVE} &
  # $PLOT $DATA $OUT_DIR -x4 -y1 --normal --linear -p mean ${GROUP} ${RANGE}  --y_min=0 --y_max=20 -i1,2 -n_60 ${SAVE} &
  # $PLOT $DATA $OUT_DIR -x4 -y1 --normal --linear -p fictious_capacity ${GROUP} ${RANGE}  --y_min=0 --y_max=20 -i1,2 -n_60 ${SAVE} &

  $PLOT $DATA $OUT_DIR -x2 -y1 --normal -p P_block ${GROUP} ${RANGE}  -i1,2 -n_60 ${SAVE} &

  $PLOT $DATA $OUT_DIR -x2 -y1 --relatives --linear -p P_block ${GROUP} ${RANGE} --pairs="(1,0),(2,0)" --y_min=-0 --y_max=200  -n_50percent_range_similarity ${SAVE} &
  $PLOT $DATA $OUT_DIR -x2 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(1,0),(2,0)" --y_min=-0.5 --y_max=0.5  -n_50percent_range_similarity ${SAVE}  &

fi
