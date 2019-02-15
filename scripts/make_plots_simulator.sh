#!/bin/sh

set -x
# PUB_SIZE="--width=5 --height=3"
PUB_SIZE="--width=12 --height=6"
PUB_2SIZE="--width=20 --height=18"
PUB_4SIZE="--width=5 --height=5"
PUB_3SIZE="--width=5 --height=5"
PUB_1_2SIZE="--width=5 --height=5"
PUB_2_1SIZE="--width=5 --height=5"
PUB_3_2SIZE="--width=5 --height=10"

PUB_3_1SIZE="--width=6.3 --height=7"
PUB_1_1SIZE="--width=6.3 --height=2.5"
PUB_1_1SIZE_A="--width=9 --height=6"
PUB_1_1SIZE_B="--width=9 --height=3"

X_LIMITS='--x_min=0.25 --x_max=2'
ARGS="$X_LIMITS -s --output-dir data/results/plots/simulator2 -q"
DATA=data/results/simulator2/results.json
FORMAT='--format=pdf'
# [(0, 'data/scenarios/simulator_publication/3_1g_im1_5_mut_ov.json'),
 # (1, 'data/scenarios/simulator_publication/3_1g_im1_5_mut_ov_t9_6.json'),
 # (2, 'data/scenarios/simulator_publication/3_1g_im1_5_mut_ov_t9_6_3.json'),
 # (3, 'data/scenarios/simulator_publication/3_1g_mut_ov.json'),
 # (4, 'data/scenarios/simulator_publication/3_1g_mut_ov_t9_6_3.json'),
 # (5, 'data/scenarios/simulator_publication/3g_im1_5.json'),
 # (6, 'data/scenarios/simulator_publication/3g_im1_5_mut_ov.json')]

SCENARIOS='-i5,6'

SUFFIX=_3g_noov_g1
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS -i5 -x 1 -y 1  --bp --normal  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT
SUFFIX=_3g_noov_g2
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS -i5 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT
SUFFIX=_3g_noov_g3
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS -i5 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT

SUFFIX=3g_mut_g1
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS -i6 -x 1 -y 1  --bp --normal  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT
SUFFIX=3g_mut_g2
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS -i6 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT
SUFFIX=3g_mut_g3
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS -i6 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT


SUFFIX=_3g_mut_sub_noov_g1
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relative-divs --pairs='(1,0,""),'  -p served_u -n $SUFFIX  --title-suffix='' $FORMAT --y_min=90 --y_max=120

SUFFIX=_3g_mut_sub_noov_g1
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relative-divs --pairs='(1,0,""),'  -p served -n $SUFFIX  --title-suffix='' $FORMAT --y_min=90 --y_max=120


SUFFIX=_3g_mut_sub_noov_g1
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT --y_min=-0.2 --y_max=0.4

SUFFIX=_3g_mut_sub_noov_g2
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT --y_min=-0.2 --y_max=0.4

SUFFIX=_3g_mut_sub_noov_g3
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT --y_min=-0.2 --y_max=0.4




SCENARIOS='-i3,4'

Y_LIMITS='--y_min=1e-7'
SUFFIX=_3_1g_g1
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i3 -x 1 -y 1  --bp --normal  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_g2
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i3 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_g3
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i3 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_g0
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i3 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G0')" --title-suffix='' $FORMAT

SUFFIX=_3_1g_thr_g1
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i4 -x 1 -y 1  --bp --normal  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_thr_g2
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i4 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_thr_g3
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i4 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_thr_g0
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i4 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G0')" --title-suffix='' $FORMAT

SUFFIX=_3_1g_thr_sub_nothr
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relative-divs --pairs='(1,0,""),'  -p served_u -n $SUFFIX  --title-suffix='' $FORMAT --y_min=0 --y_max=150

SUFFIX=_3_1g_thr_sub_nothr
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relative-divs --pairs='(1,0,""),'  -p served -n $SUFFIX  --title-suffix='' $FORMAT --y_min=0 --y_max=150

SUFFIX=_3_1g_thr_sub_nothr_g0
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G0')" --title-suffix='' $FORMAT --y_min=-0.4 --y_max=0.4
SUFFIX=_3_1g_thr_sub_nothr_g2
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT --y_min=-0.5 --y_max=0.3
SUFFIX=_3_1g_thr_sub_nothr_g3
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT --y_min=-0.5 --y_max=0.3
SUFFIX=_3_1g_thr_sub_nothr_g1
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT --y_min=-0.5 --y_max=0.3




SCENARIOS='-i0,2'

Y_LIMITS='--y_min=1e-7'
SUFFIX=_3_1g_g1_im1_5
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i0 -x 1 -y 1  --bp --normal  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_g2_im1_5
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i0 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_g3_im1_5
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i0 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_g0_im1_5
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i0 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G0')" --title-suffix='' $FORMAT

SUFFIX=_3_1g_thr_g1_im1_5
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i2 -x 1 -y 1  --bp --normal  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_thr_g2_im1_5
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i2 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_thr_g3_im1_5
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i2 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_thr_g0_im1_5
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i2 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G0')" --title-suffix='' $FORMAT

SUFFIX=_3_1g_thr_sub_nothr_im1_5
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relative-divs --pairs='(1,0,""),'  -p served_u -n $SUFFIX  --title-suffix='' $FORMAT --y_min=0 --y_max=150

SUFFIX=_3_1g_thr_sub_nothr_im1_5
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relative-divs --pairs='(1,0,""),'  -p served -n $SUFFIX  --title-suffix='' $FORMAT --y_min=0 --y_max=150

SUFFIX=_3_1g_thr_sub_nothr_g0_im1_5
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G0')" --title-suffix='' $FORMAT --y_min=-0.4 --y_max=0.4
SUFFIX=_3_1g_thr_sub_nothr_g2_im1_5
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT --y_min=-0.5 --y_max=0.3
SUFFIX=_3_1g_thr_sub_nothr_g3_im1_5
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT --y_min=-0.5 --y_max=0.3
SUFFIX=_3_1g_thr_sub_nothr_g1_im1_5
tools/plot.py $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT --y_min=-0.5 --y_max=0.3
