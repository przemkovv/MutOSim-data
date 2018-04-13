#!/bin/sh

# (24, 'data/journal/3g/1ov/random.json'),
# (25, 'data/journal/3g/1ov/random.json;data/journal/compression/t9_3.json'),
# (26, 'data/journal/3g/1ov/random.json;data/journal/compression/t9_3.json;data/journal/overload/im_1.2.json'),
# (27, 'data/journal/3g/1ov/random.json;data/journal/compression/t9_3.json;data/journal/overload/im_1.5.json'),
# (28, 'data/journal/3g/1ov/random.json;data/journal/compression/t9_6.json'),
# (29, 'data/journal/3g/1ov/random.json;data/journal/compression/t9_6.json;data/journal/overload/im_1.2.json'),
# (30, 'data/journal/3g/1ov/random.json;data/journal/compression/t9_6.json;data/journal/overload/im_1.5.json'),
# (31, 'data/journal/3g/1ov/random.json;data/journal/compression/t9_6_3.json'),
# (32, 'data/journal/3g/1ov/random.json;data/journal/compression/t9_6_3.json;data/journal/overload/im_1.2.json'),
# (33, 'data/journal/3g/1ov/random.json;data/journal/compression/t9_6_3.json;data/journal/overload/im_1.5.json'),
# (34, 'data/journal/3g/1ov/random.json;data/journal/overload/im_1.2.json'),
# (35, 'data/journal/3g/1ov/random.json;data/journal/overload/im_1.5.json'),
# (60, 'data/journal/3g/3ov/random.json'),
# (61, 'data/journal/3g/3ov/random.json;data/journal/compression/t9_3.json'),
# (62, 'data/journal/3g/3ov/random.json;data/journal/compression/t9_3.json;data/journal/overload/im_1.2.json'),
# (63, 'data/journal/3g/3ov/random.json;data/journal/compression/t9_3.json;data/journal/overload/im_1.5.json'),
# (64, 'data/journal/3g/3ov/random.json;data/journal/compression/t9_6.json'),
# (65, 'data/journal/3g/3ov/random.json;data/journal/compression/t9_6.json;data/journal/overload/im_1.2.json'),
# (66, 'data/journal/3g/3ov/random.json;data/journal/compression/t9_6.json;data/journal/overload/im_1.5.json'),
# (67, 'data/journal/3g/3ov/random.json;data/journal/compression/t9_6_3.json'),
# (68, 'data/journal/3g/3ov/random.json;data/journal/compression/t9_6_3.json;data/journal/overload/im_1.2.json'),
# (69, 'data/journal/3g/3ov/random.json;data/journal/compression/t9_6_3.json;data/journal/overload/im_1.5.json'),
# (70, 'data/journal/3g/3ov/random.json;data/journal/overload/im_1.2.json'),
# (71, 'data/journal/3g/3ov/random.json;data/journal/overload/im_1.5.json'),
# (72, 'data/journal/3g/base.json'),
# (73, 'data/journal/3g/base.json;data/journal/compression/t9_3.json'),
# (74, 'data/journal/3g/base.json;data/journal/compression/t9_3.json;data/journal/overload/im_1.2.json'),
# (75, 'data/journal/3g/base.json;data/journal/compression/t9_3.json;data/journal/overload/im_1.5.json'),
# (76, 'data/journal/3g/base.json;data/journal/compression/t9_6.json'),
# (77, 'data/journal/3g/base.json;data/journal/compression/t9_6.json;data/journal/overload/im_1.2.json'),
# (78, 'data/journal/3g/base.json;data/journal/compression/t9_6.json;data/journal/overload/im_1.5.json'),
# (79, 'data/journal/3g/base.json;data/journal/compression/t9_6_3.json'),
# (80, 'data/journal/3g/base.json;data/journal/compression/t9_6_3.json;data/journal/overload/im_1.2.json'),
# (81, 'data/journal/3g/base.json;data/journal/compression/t9_6_3.json;data/journal/overload/im_1.5.json'),
# (82, 'data/journal/3g/base.json;data/journal/overload/im_1.2.json'),
# (83, 'data/journal/3g/base.json;data/journal/overload/im_1.5.json')
# (84, 'data/journal2/3g/1ov/random.json;data/journal2/compression_adaptive/t9_int33.json'),
# (85, 'data/journal2/3g/1ov/random.json;data/journal2/compression_adaptive/t9_int33.json;data/journal2/overload/im_1.2.json'),
# (86, 'data/journal2/3g/1ov/random.json;data/journal2/compression_adaptive/t9_int33.json;data/journal2/overload/im_1.5.json'),
# (87, 'data/journal2/3g/1ov/random.json;data/journal2/compression_adaptive/t9_int66.json'),
# (88, 'data/journal2/3g/1ov/random.json;data/journal2/compression_adaptive/t9_int66.json;data/journal2/overload/im_1.2.json'),
# (89, 'data/journal2/3g/1ov/random.json;data/journal2/compression_adaptive/t9_int66.json;data/journal2/overload/im_1.5.json'),
# (90, 'data/journal2/3g/1ov/random.json;data/journal2/compression_adaptive/t9_int66_int33.json'),
# (91, 'data/journal2/3g/1ov/random.json;data/journal2/compression_adaptive/t9_int66_int33.json;data/journal2/overload/im_1.2.json'),
# (92, 'data/journal2/3g/1ov/random.json;data/journal2/compression_adaptive/t9_int66_int33.json;data/journal2/overload/im_1.5.json'),
# (93, 'data/journal2/3g/3ov/random.json;data/journal2/compression_adaptive/t9_int33.json'),
# (94, 'data/journal2/3g/3ov/random.json;data/journal2/compression_adaptive/t9_int33.json;data/journal2/overload/im_1.2.json'),
# (95, 'data/journal2/3g/3ov/random.json;data/journal2/compression_adaptive/t9_int33.json;data/journal2/overload/im_1.5.json'),
# (96, 'data/journal2/3g/3ov/random.json;data/journal2/compression_adaptive/t9_int66.json'),
# (97, 'data/journal2/3g/3ov/random.json;data/journal2/compression_adaptive/t9_int66.json;data/journal2/overload/im_1.2.json'),
# (98, 'data/journal2/3g/3ov/random.json;data/journal2/compression_adaptive/t9_int66.json;data/journal2/overload/im_1.5.json'),
# (99, 'data/journal2/3g/3ov/random.json;data/journal2/compression_adaptive/t9_int66_int33.json'),
# (100, 'data/journal2/3g/3ov/random.json;data/journal2/compression_adaptive/t9_int66_int33.json;data/journal2/overload/im_1.2.json'),
# (101, 'data/journal2/3g/3ov/random.json;data/journal2/compression_adaptive/t9_int66_int33.json;data/journal2/overload/im_1.5.json'),
# (102, 'data/journal2/3g/base.json;data/journal2/compression_adaptive/t9_int33.json'),
# (103, 'data/journal2/3g/base.json;data/journal2/compression_adaptive/t9_int33.json;data/journal2/overload/im_1.2.json'),
# (104, 'data/journal2/3g/base.json;data/journal2/compression_adaptive/t9_int33.json;data/journal2/overload/im_1.5.json'),
# (105, 'data/journal2/3g/base.json;data/journal2/compression_adaptive/t9_int66.json'),
# (106, 'data/journal2/3g/base.json;data/journal2/compression_adaptive/t9_int66.json;data/journal2/overload/im_1.2.json'),
# (107, 'data/journal2/3g/base.json;data/journal2/compression_adaptive/t9_int66.json;data/journal2/overload/im_1.5.json'),
# (108, 'data/journal2/3g/base.json;data/journal2/compression_adaptive/t9_int66_int33.json'),
# (109, 'data/journal2/3g/base.json;data/journal2/compression_adaptive/t9_int66_int33.json;data/journal2/overload/im_1.2.json'),
# (110, 'data/journal2/3g/base.json;data/journal2/compression_adaptive/t9_int66_int33.json;data/journal2/overload/im_1.5.json')

set -x
# PUB_SIZE="--width=5 --height=3"
PUB_SIZE="--width=12 --height=6"
PUB_2SIZE="--width=20 --height=18"
PUB_4SIZE="--width=5 --height=5"
PUB_3SIZE="--width=5 --height=5"
PUB_3_1SIZE="--width=5 --height=6"
PUB_1_1SIZE="--width=5 --height=2.6"
PUB_1_2SIZE="--width=5 --height=5"
PUB_2_1SIZE="--width=5 --height=5"
PUB_3_2SIZE="--width=5 --height=10"

X_LIMITS='--x_min=0.45 --x_max=1.8'
ARGS="$X_LIMITS -s --output-dir data/results/plots/journal3 -q"
DATA=data/results/journal/combined/3g.json


# To publish

SUFFIX=_random_1ov_3ov_t9_int3
SCENARIOS=-i24,34,35,60,70,71,84,85,86,93,94,95 # t9_3
tools/plot.py $DATA $PUB_1_1SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs='(6,0,"1ov - $f_{G2}=1.0$"),(7,1,"1ov - $f_{G2}=1.2$"),(8,2,"1ov - $f_{G2}=1.5$"),(9,3,"3ov - $f_{G2}=1.0$"),(10,4,"3ov - $f_{G2}=1.2$"),(11,5,"3ov - $f_{G2}=1.5$")' --linear --y_min=95 --y_max=105 -p served_u -n $SUFFIX --title-suffix='Elastic - $t_5=9\rightarrow 3$ vs No compression'
SUFFIX=_random_1ov_3ov_t9_int6
SCENARIOS=-i24,34,35,60,70,71,87,88,89,96,97,98 # t9_6
tools/plot.py $DATA $PUB_1_1SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs='(6,0,"1ov - $f_{G2}=1.0$"),(7,1,"1ov - $f_{G2}=1.2$"),(8,2,"1ov - $f_{G2}=1.5$"),(9,3,"3ov - $f_{G2}=1.0$"),(10,4,"3ov - $f_{G2}=1.2$"),(11,5,"3ov - $f_{G2}=1.5$")' --linear --y_min=95 --y_max=105 -p served_u -n $SUFFIX --title-suffix='Elastic - $t_5=9\rightarrow 6$ vs No compression'
SUFFIX=_random_1ov_3ov_t9_int6_int3
SCENARIOS=-i24,34,35,60,70,71,90,91,92,99,100,101 # t9_6_3
tools/plot.py $DATA $PUB_1_1SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs='(6,0,"1ov - $f_{G2}=1.0$"),(7,1,"1ov - $f_{G2}=1.2$"),(8,2,"1ov - $f_{G2}=1.5$"),(9,3,"3ov - $f_{G2}=1.0$"),(10,4,"3ov - $f_{G2}=1.2$"),(11,5,"3ov - $f_{G2}=1.5$")' --linear --y_min=95 --y_max=105 -p served_u -n $SUFFIX --title-suffix='Elastic - $t_5=9\rightarrow 6\rightarrow 3$ vs No compression'


# served
SUFFIX=_random_1ov_3ov_t9_int3
SCENARIOS=-i24,34,35,60,70,71,84,85,86,93,94,95 # t9_3
tools/plot.py $DATA $PUB_1_1SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs='(6,0,"1ov - $f_{G2}=1.0$"),(7,1,"1ov - $f_{G2}=1.2$"),(8,2,"1ov - $f_{G2}=1.5$"),(9,3,"3ov - $f_{G2}=1.0$"),(10,4,"3ov - $f_{G2}=1.2$"),(11,5,"3ov - $f_{G2}=1.5$")' --linear --y_min=95 --y_max=105 -p served -n $SUFFIX --title-suffix='Elastic - $t_5=9\rightarrow 3$ vs No compression'
SUFFIX=_random_1ov_3ov_t9_int6
SCENARIOS=-i24,34,35,60,70,71,87,88,89,96,97,98 # t9_6
tools/plot.py $DATA $PUB_1_1SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs='(6,0,"1ov - $f_{G2}=1.0$"),(7,1,"1ov - $f_{G2}=1.2$"),(8,2,"1ov - $f_{G2}=1.5$"),(9,3,"3ov - $f_{G2}=1.0$"),(10,4,"3ov - $f_{G2}=1.2$"),(11,5,"3ov - $f_{G2}=1.5$")' --linear --y_min=95 --y_max=105 -p served -n $SUFFIX --title-suffix='Elastic - $t_5=9\rightarrow 6$ vs No compression'
SUFFIX=_random_1ov_3ov_t9_int6_int3
SCENARIOS=-i24,34,35,60,70,71,90,91,92,99,100,101 # t9_6_3
tools/plot.py $DATA $PUB_1_1SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs='(6,0,"1ov - $f_{G2}=1.0$"),(7,1,"1ov - $f_{G2}=1.2$"),(8,2,"1ov - $f_{G2}=1.5$"),(9,3,"3ov - $f_{G2}=1.0$"),(10,4,"3ov - $f_{G2}=1.2$"),(11,5,"3ov - $f_{G2}=1.5$")' --linear --y_min=95 --y_max=105 -p served -n $SUFFIX --title-suffix='Elastic - $t_5=9\rightarrow 6\rightarrow 3$ vs No compression'

# SUFFIX=_random_1ov_rim
# tools/plot.py $DATA $PUB_3_1SIZE $ARGS -x 3 -y 1 -i0,10,11 --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix="3g - 1ov -- im 1.0, 1.2, 1.5 -- poprawić tytuły"

# SUFFIX=_random_3ov_rim
# tools/plot.py $DATA $PUB_3_1SIZE $ARGS -x 3 -y 1 -i36,46,47 --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix="3g - 3ov -- im 1.0, 1.2, 1.5 -- poprawić tytuły"

SCENARIOS=-i84,85,86,24,34,35 # t9_3
# SUFFIX=_random_1ov_t9_int3_rim_g1
# tools/plot.py $DATA $PUB_3_1SIZE $ARGS -x 3 -y 1 $SCENARIOS --relatives --pairs='(0,3," - $f_{G2}=1.0$"),(1,4," - $f_{G2}=1.2$"),(2,5," - $f_{G2}=1.5$")' --linear --y_min=0 --y_max=175 -p P_block -n $SUFFIX --groups="('G1')"
SUFFIX=_random_1ov_t9_int3_rim_g2
tools/plot.py $DATA $PUB_3_1SIZE $ARGS -x 3 -y 1 $SCENARIOS --relatives --pairs='(0,3," - $f_{G2}=1.0$"),(1,4," - $f_{G2}=1.2$"),(2,5," - $f_{G2}=1.5$")' --linear --y_min=0 --y_max=175 -p P_block -n $SUFFIX --groups="('G2')"

SCENARIOS=-i93,94,95,60,70,71 # t9_3
# SUFFIX=_random_3ov_t9_int3_rim_g1
# tools/plot.py $DATA $PUB_3_2SIZE $ARGS -x 3 -y 1 $SCENARIOS --relatives --pairs='(0,3," - $f_{G2}=1.0$"),(1,4," - $f_{G2}=1.2$"),(2,5," - $f_{G2}=1.5$")' --linear --y_min=0 --y_max=175 -p P_block -n $SUFFIX --groups="('G1')"
SUFFIX=_random_3ov_t9_int3_rim_g2
tools/plot.py $DATA $PUB_3_2SIZE $ARGS -x 3 -y 1 $SCENARIOS --relatives --pairs='(0,3," - $f_{G2}=1.0$"),(1,4," - $f_{G2}=1.2$"),(2,5," - $f_{G2}=1.5$")' --linear --y_min=0 --y_max=175 -p P_block -n $SUFFIX --groups="('G2')"

SCENARIOS=-i87,88,89,24,34,35 # t9_6
SUFFIX=_random_1ov_t9_int6_rim_g2
tools/plot.py $DATA $PUB_3_1SIZE $ARGS -x 3 -y 1 $SCENARIOS --relatives --pairs='(0,3," - $f_{G2}=1.0$"),(1,4," - $f_{G2}=1.2$"),(2,5," - $f_{G2}=1.5$")' --linear --y_min=0 --y_max=175 -p P_block -n $SUFFIX --groups="('G2')"

SUFFIX=_random_3ov_t9_int6_rim_g2
SCENARIOS=-i96,97,98,60,70,71 # t9_6
tools/plot.py $DATA $PUB_3_1SIZE $ARGS -x 3 -y 1 $SCENARIOS --relatives --pairs='(0,3," - $f_{G2}=1.0$"),(1,4," - $f_{G2}=1.2$"),(2,5," - $f_{G2}=1.5$")' --linear --y_min=0 --y_max=175 -p P_block -n $SUFFIX --groups="('G2')"

SCENARIOS=-i90,91,92,24,34,35 # t9_6_3
SUFFIX=_random_1ov_t9_int6_int3_rim_g1
tools/plot.py $DATA $PUB_3_1SIZE $ARGS -x 3 -y 1 $SCENARIOS --relatives --pairs='(0,3," - $f_{G2}=1.0$"),(1,4," - $f_{G2}=1.2$"),(2,5," - $f_{G2}=1.5$")' --linear --y_min=0 --y_max=175 -p P_block -n $SUFFIX --groups="('G1')"
SUFFIX=_random_1ov_t9_int6_int3_rim_g2
tools/plot.py $DATA $PUB_3_1SIZE $ARGS -x 3 -y 1 $SCENARIOS --relatives --pairs='(0,3," - $f_{G2}=1.0$"),(1,4," - $f_{G2}=1.2$"),(2,5," - $f_{G2}=1.5$")' --linear --y_min=0 --y_max=175 -p P_block -n $SUFFIX --groups="('G2')"

SUFFIX=_random_3ov_t9_int6_int3_rim_g1
SCENARIOS=-i99,100,101,60,70,71 # t9_6_3
tools/plot.py $DATA $PUB_3_1SIZE $ARGS -x 3 -y 1 $SCENARIOS --relatives --pairs='(0,3," - $f_{G2}=1.0$"),(1,4," - $f_{G2}=1.2$"),(2,5," - $f_{G2}=1.5$")' --linear --y_min=0 --y_max=175 -p P_block -n $SUFFIX --groups="('G1')"
SUFFIX=_random_3ov_t9_int6_int3_rim_g2
SCENARIOS=-i99,100,101,60,70,71 # t9_6_3
tools/plot.py $DATA $PUB_3_1SIZE $ARGS -x 3 -y 1 $SCENARIOS --relatives --pairs='(0,3," - $f_{G2}=1.0$"),(1,4," - $f_{G2}=1.2$"),(2,5," - $f_{G2}=1.5$")' --linear --y_min=0 --y_max=175 -p P_block -n $SUFFIX --groups="('G2')"

