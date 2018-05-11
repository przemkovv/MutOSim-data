#!/bin/sh

PLOT=tools/plot.py
OUT_DIR="--output-dir=data/results/plots/analytical"

if [[ $2 -eq 1 ]]; then
  SAVE="--quiet --save"
fi

if [[ $1 -eq 1 ]]; then
  DATA="data/results/const_ratio.json"
  $PLOT $DATA $OUT_DIR -x2 -y2 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(0,1),(2,3),(4,5),(6,7)" --y_min=50 --y_max=150  -n_50percent_range_similarity ${SAVE}
  $PLOT $DATA $OUT_DIR -x2 -y2 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(0,1),(2,3),(4,5),(6,7)" --y_min=98 --y_max=102 -n _2percent_range_similarity $SAVE
  $PLOT $DATA $OUT_DIR -x2 -y3 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(0,2),(2,4),(4,6),(1,3),(3,5),(5,7)" --y_min=50 --y_max=150  -n_50percent_range_convergence $SAVE
  $PLOT $DATA $OUT_DIR -x2 -y3 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(0,2),(2,4),(4,6),(1,3),(3,5),(5,7)" --y_min=98 --y_max=102 -n _2percent_range_convergence $SAVE
fi

if [[ $1 -eq 2 ]]; then
  DATA="data/results/var_ratio.json"
  $PLOT $DATA $OUT_DIR -x2 -y2 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(0,1),(2,3),(4,5)," --y_min=50 --y_max=150  -n_50percent_range_similarity $SAVE
  $PLOT $DATA $OUT_DIR -x2 -y2 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(0,1),(2,3),(4,5)," --y_min=98 --y_max=102 -n _2percent_range_similarity $SAVE
  $PLOT $DATA $OUT_DIR -x2 -y3 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(0,2),(2,4),(1,3),(3,5)" --y_min=50 --y_max=150  -n_50percent_range_convergence $SAVE
  $PLOT $DATA $OUT_DIR -x2 -y3 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.8 --x_min=0.4 --pairs="(0,2),(2,4),(1,3),(3,5)" --y_min=98 --y_max=102 -n _2percent_range_convergence $SAVE
fi
if [[ $1 -eq 3 ]]; then
  DATA="data/results/var_ratio.json"
  # $PLOT $DATA -x1 -y1 --normal -p P_block -i0 --groups="('G0',)" --x_max=1.6 --x_min=0.4 -n_0 $SAVE
  # $PLOT $DATA -x1 -y1 --normal -p P_block -i1 --groups="('G0',)" --x_max=1.6 --x_min=0.4 -n_1 $SAVE
  $PLOT $DATA -x1 -y1 --normal -p P_block -i2 --groups="('G0',)" --x_max=1.6 --x_min=0.4 -n_2 $SAVE
  # $PLOT $DATA -x1 -y1 --normal -p P_block -i3 --groups="('G0',)" --x_max=1.6 --x_min=0.4 -n_3 $SAVE
  # $PLOT $DATA -x1 -y1 --normal -p P_block -i4 --groups="('G0',)" --x_max=1.6 --x_min=0.4 -n_4 $SAVE
  # $PLOT $DATA -x1 -y1 --normal -p P_block -i5 --groups="('G0',)" --x_max=1.6 --x_min=0.4 -n_5 $SAVE
  # $PLOT $DATA -x1 -y1 --normal -p P_block -i6 --groups="('G0',)" --x_max=1.6 --x_min=0.4 -n_6 $SAVE
  # $PLOT $DATA -x1 -y1 --normal -p P_block -i7 --groups="('G0',)" --x_max=1.6 --x_min=0.4 -n_7 $SAVE
fi
