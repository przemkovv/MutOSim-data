#!/bin/sh

# (0, 'data/journal/3g/1ov/highest_free.json'),
# t9_3
# (1, 'data/journal/3g/1ov/highest_free.json;data/journal/compression/t9_3.json'),
# (2, 'data/journal/3g/1ov/highest_free.json;data/journal/compression/t9_3.json;data/journal/overload/im_1.2.json'),
# (3, 'data/journal/3g/1ov/highest_free.json;data/journal/compression/t9_3.json;data/journal/overload/im_1.5.json'),
# t9_6
# (4, 'data/journal/3g/1ov/highest_free.json;data/journal/compression/t9_6.json'),
# (5, 'data/journal/3g/1ov/highest_free.json;data/journal/compression/t9_6.json;data/journal/overload/im_1.2.json'),
# (6, 'data/journal/3g/1ov/highest_free.json;data/journal/compression/t9_6.json;data/journal/overload/im_1.5.json'),
# t9_6_3
# (7, 'data/journal/3g/1ov/highest_free.json;data/journal/compression/t9_6_3.json'),
# (8, 'data/journal/3g/1ov/highest_free.json;data/journal/compression/t9_6_3.json;data/journal/overload/im_1.2.json'),
# (9, 'data/journal/3g/1ov/highest_free.json;data/journal/compression/t9_6_3.json;data/journal/overload/im_1.5.json'),
# (10, 'data/journal/3g/1ov/highest_free.json;data/journal/overload/im_1.2.json'),
# (11, 'data/journal/3g/1ov/highest_free.json;data/journal/overload/im_1.5.json'),
# (12, 'data/journal/3g/1ov/lowest_free.json'),
# (13, 'data/journal/3g/1ov/lowest_free.json;data/journal/compression/t9_3.json'),
# (14, 'data/journal/3g/1ov/lowest_free.json;data/journal/compression/t9_3.json;data/journal/overload/im_1.2.json'),
# (15, 'data/journal/3g/1ov/lowest_free.json;data/journal/compression/t9_3.json;data/journal/overload/im_1.5.json'),
# (16, 'data/journal/3g/1ov/lowest_free.json;data/journal/compression/t9_6.json'),
# (17, 'data/journal/3g/1ov/lowest_free.json;data/journal/compression/t9_6.json;data/journal/overload/im_1.2.json'),
# (18, 'data/journal/3g/1ov/lowest_free.json;data/journal/compression/t9_6.json;data/journal/overload/im_1.5.json'),
# (19, 'data/journal/3g/1ov/lowest_free.json;data/journal/compression/t9_6_3.json'),
# (20, 'data/journal/3g/1ov/lowest_free.json;data/journal/compression/t9_6_3.json;data/journal/overload/im_1.2.json'),
# (21, 'data/journal/3g/1ov/lowest_free.json;data/journal/compression/t9_6_3.json;data/journal/overload/im_1.5.json'),
# (22, 'data/journal/3g/1ov/lowest_free.json;data/journal/overload/im_1.2.json'),
# (23, 'data/journal/3g/1ov/lowest_free.json;data/journal/overload/im_1.5.json'),
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
# (36, 'data/journal/3g/3ov/highest_free.json'),
# t9_3
# (37, 'data/journal/3g/3ov/highest_free.json;data/journal/compression/t9_3.json'),
# (38, 'data/journal/3g/3ov/highest_free.json;data/journal/compression/t9_3.json;data/journal/overload/im_1.2.json'),
# (39, 'data/journal/3g/3ov/highest_free.json;data/journal/compression/t9_3.json;data/journal/overload/im_1.5.json'),
# t9_6
# (40, 'data/journal/3g/3ov/highest_free.json;data/journal/compression/t9_6.json'),
# (41, 'data/journal/3g/3ov/highest_free.json;data/journal/compression/t9_6.json;data/journal/overload/im_1.2.json'),
# (42, 'data/journal/3g/3ov/highest_free.json;data/journal/compression/t9_6.json;data/journal/overload/im_1.5.json'),
# t9_6_3
# (43, 'data/journal/3g/3ov/highest_free.json;data/journal/compression/t9_6_3.json'),
# (44, 'data/journal/3g/3ov/highest_free.json;data/journal/compression/t9_6_3.json;data/journal/overload/im_1.2.json'),
# (45, 'data/journal/3g/3ov/highest_free.json;data/journal/compression/t9_6_3.json;data/journal/overload/im_1.5.json'),
# (46, 'data/journal/3g/3ov/highest_free.json;data/journal/overload/im_1.2.json'),
# (47, 'data/journal/3g/3ov/highest_free.json;data/journal/overload/im_1.5.json'),
# (48, 'data/journal/3g/3ov/lowest_free.json'),
# (49, 'data/journal/3g/3ov/lowest_free.json;data/journal/compression/t9_3.json'),
# (50, 'data/journal/3g/3ov/lowest_free.json;data/journal/compression/t9_3.json;data/journal/overload/im_1.2.json'),
# (51, 'data/journal/3g/3ov/lowest_free.json;data/journal/compression/t9_3.json;data/journal/overload/im_1.5.json'),
# (52, 'data/journal/3g/3ov/lowest_free.json;data/journal/compression/t9_6.json'),
# (53, 'data/journal/3g/3ov/lowest_free.json;data/journal/compression/t9_6.json;data/journal/overload/im_1.2.json'),
# (54, 'data/journal/3g/3ov/lowest_free.json;data/journal/compression/t9_6.json;data/journal/overload/im_1.5.json'),
# (55, 'data/journal/3g/3ov/lowest_free.json;data/journal/compression/t9_6_3.json'),
# (56, 'data/journal/3g/3ov/lowest_free.json;data/journal/compression/t9_6_3.json;data/journal/overload/im_1.2.json'),
# (57, 'data/journal/3g/3ov/lowest_free.json;data/journal/compression/t9_6_3.json;data/journal/overload/im_1.5.json'),
# (58, 'data/journal/3g/3ov/lowest_free.json;data/journal/overload/im_1.2.json'),
# (59, 'data/journal/3g/3ov/lowest_free.json;data/journal/overload/im_1.5.json'),
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

# PUB_SIZE="--width=5 --height=3"
PUB_SIZE="--width=12 --height=6"
PUB_2SIZE="--width=20 --height=18"
PUB_4SIZE="--width=5 --height=5"
PUB_3SIZE="--width=5 --height=5"
PUB_3_1SIZE="--width=5 --height=6"
PUB_1_1SIZE="--width=5 --height=2.5"
PUB_1_1SIZE_A="--width=5 --height=2.3"
PUB_1_2SIZE="--width=5 --height=5"
PUB_2_1SIZE="--width=5 --height=5"
PUB_3_2SIZE="--width=5 --height=10"

PUB_3_1SIZE="--width=6.3 --height=7"
PUB_1_1SIZE="--width=6.3 --height=2.5"
PUB_1_1SIZE_A="--width=6.3 --height=2.3"

set -x
X_LIMITS='--x_min=0.45 --x_max=1.8'
ARGS="$X_LIMITS -s --output-dir data/results/plots/journal3 -q"
DATA=data/results/journal/combined/3_1g.json


# To publish


# SUFFIX=_random_1ov_3ov_t9_3_vs_0ov
# SCENARIOS=-i24,25,26,27,72,60,61,62,63 # t9_3
# tools/plot.py $DATA $PUB_SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs="(0,4),(1,4),(2,4),(3,4),(5,4),(6,4),(7,4),(8,4)" --linear --y_min=50 --y_max=150 -p served_u -n $SUFFIX --title-suffix="t9_3 vs No compression and 0ov"
# SUFFIX=_random_1ov_3ov_t9_6_vs_0ov
# SCENARIOS=-i24,28,29,30,72,60,64,65,66 # t9_6
# tools/plot.py $DATA $PUB_SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs="(0,4),(1,4),(2,4),(3,4),(5,4),(6,4),(7,4),(8,4)" --linear --y_min=50 --y_max=150 -p served_u -n $SUFFIX --title-suffix="t9_6 vs No compression and 0ov"
# SUFFIX=_random_1ov_3ov_t9_6_3_vs_0ov
# SCENARIOS=-i24,31,32,33,96,60,67,68,69 # t9_6_3
# tools/plot.py $DATA $PUB_SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs="(0,4),(1,4),(2,4),(3,4),(5,4),(6,4),(7,4),(8,4)" --linear --y_min=50 --y_max=150 -p served_u -n $SUFFIX --title-suffix="t9_6_3 vs No compression and 0ov"

# SUFFIX=_random_1ov_3ov_t9_3
# SCENARIOS=-i24,25,26,27,72,60,61,62,63,34,35,70,71 # t9_3
# tools/plot.py $DATA $PUB_SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs="(1,0),(2,9),(3,10),(6,5),(7,11),(8,12)" --linear --y_min=90 --y_max=110 -p served_u -n $SUFFIX --title-suffix="t9_3 vs No compression"
# SUFFIX=_random_1ov_3ov_t9_6
# SCENARIOS=-i24,28,29,30,72,60,64,65,66,34,35,70,71 # t9_6
# tools/plot.py $DATA $PUB_SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs="(1,0),(2,9),(3,10),(6,5),(7,11),(8,12)" --linear --y_min=90 --y_max=110 -p served_u -n $SUFFIX --title-suffix="t9_6 vs No compression"
# SUFFIX=_random_1ov_3ov_t9_6_3
# SCENARIOS=-i24,31,32,33,72,60,67,68,69,34,35,70,71 # t9_6_3
# tools/plot.py $DATA $PUB_SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs="(1,0),(2,9),(3,10),(6,5),(7,11),(8,12)" --linear --y_min=90 --y_max=110 -p served_u -n $SUFFIX --title-suffix="t9_6_3 vs No compression"

SUFFIX=_random_1ov_3ov_t9_6_3
SCENARIOS=-i24,34,35,60,70,71,31,32,33,67,68,69 # t9_6_3
tools/plot.py $DATA $PUB_1_1SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs='(6,0,"1ov - $f_{G2}=1.0$"),(7,1,"1ov - $f_{G2}=1.2$"),(8,2,"1ov - $f_{G2}=1.5$"),(9,3,"3ov - $f_{G2}=1.0$"),(10,4,"3ov - $f_{G2}=1.2$"),(11,5,"3ov - $f_{G2}=1.5$")' --linear --y_min=90 --y_max=110 -p served_u -n $SUFFIX --title-suffix='Adaptive - $t_5=9\rightarrow 6\rightarrow 3$ vs No compression'

SUFFIX=_random_1ov_3ov_t9_6_3
SCENARIOS=-i24,34,35,60,70,71,31,32,33,67,68,69 # t9_6_3
tools/plot.py $DATA $PUB_1_1SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs='(6,0,"1ov - $f_{G2}=1.0$"),(7,1,"1ov - $f_{G2}=1.2$"),(8,2,"1ov - $f_{G2}=1.5$"),(9,3,"3ov - $f_{G2}=1.0$"),(10,4,"3ov - $f_{G2}=1.2$"),(11,5,"3ov - $f_{G2}=1.5$")' --linear --y_min=90 --y_max=110 -p served -n $SUFFIX --title-suffix='Adaptive - $t_5=9\rightarrow 6\rightarrow 3$ vs No compression'

# SUFFIX=_random_1ov_3ov_t9_6_t9_3
# SCENARIOS=-i28,29,30,64,65,66,25,26,27,61,62,63 # t9_6 t9_3
# tools/plot.py $DATA $PUB_SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs="(0,6,'1ov im 1.0'),(1,7,'1ov im 1.2'),(2,8,'1ov im 1.5'),(3,9,'3ov im 1.0'),(4,10,'3ov im 1.2'),(5,11,'3ov im 1.5')" --linear --y_min=90 --y_max=110 -p served_u -n $SUFFIX --title-suffix="t9_6 vs t9_3"

# SUFFIX=_random_1ov_3ov_t9_6_3_t9_6
# SCENARIOS=-i31,32,33,67,68,69,28,29,30,64,65,66 # t9_6_3 t9_6
# tools/plot.py $DATA $PUB_SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs="(0,6,'1ov im 1.0'),(1,7,'1ov im 1.2'),(2,8,'1ov im 1.5'),(3,9,'3ov im 1.0'),(4,10,'3ov im 1.2'),(5,11,'3ov im 1.5')" --linear --y_min=90 --y_max=110 -p served_u -n $SUFFIX --title-suffix="t9_6_3 vs t9_6"

# SUFFIX=_random_1ov_3ov_t9_6_3_t9_3
# SCENARIOS=-i31,32,33,67,68,69,25,26,27,61,62,63 # t9_6_3 t9_3
# tools/plot.py $DATA $PUB_SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs="(0,6,'1ov im 1.0'),(1,7,'1ov im 1.2'),(2,8,'1ov im 1.5'),(3,9,'3ov im 1.0'),(4,10,'3ov im 1.2'),(5,11,'3ov im 1.5')" --linear --y_min=90 --y_max=110 -p served_u -n $SUFFIX --title-suffix="t9_6_3 vs t9_3"

# # served
# SUFFIX=_random_1ov_3ov_t9_3_vs_0ov
# SCENARIOS=-i24,25,26,27,72,60,61,62,63 # t9_3
# tools/plot.py $DATA $PUB_SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs="(0,4),(1,4),(2,4),(3,4),(5,4),(6,4),(7,4),(8,4)" --linear --y_min=50 --y_max=150 -p served -n $SUFFIX --title-suffix="t9_3 vs No compression and 0ov"
# SUFFIX=_random_1ov_3ov_t9_6_vs_0ov
# SCENARIOS=-i24,28,29,30,72,60,64,65,66 # t9_6
# tools/plot.py $DATA $PUB_SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs="(0,4),(1,4),(2,4),(3,4),(5,4),(6,4),(7,4),(8,4)" --linear --y_min=50 --y_max=150 -p served -n $SUFFIX --title-suffix="t9_6 vs No compression and 0ov"
# SUFFIX=_random_1ov_3ov_t9_6_3_vs_0ov
# SCENARIOS=-i24,31,32,33,72,60,67,68,69 # t9_6_3
# tools/plot.py $DATA $PUB_SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs="(0,4),(1,4),(2,4),(3,4),(5,4),(6,4),(7,4),(8,4)" --linear --y_min=50 --y_max=150 -p served -n $SUFFIX --title-suffix="t9_6_3 vs No compression and 0ov"

# # served
# SUFFIX=_random_1ov_3ov_t9_3
# SCENARIOS=-i24,25,26,27,72,60,61,62,63,34,35,70,71 # t9_3
# tools/plot.py $DATA $PUB_SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs="(1,0),(2,9),(3,10),(6,5),(7,11),(8,12)" --linear --y_min=90 --y_max=110 -p served -n $SUFFIX --title-suffix="t9_3 vs No compression"
# SUFFIX=_random_1ov_3ov_t9_6
# SCENARIOS=-i24,28,29,30,72,60,64,65,66,34,35,70,71 # t9_6
# tools/plot.py $DATA $PUB_SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs="(1,0),(2,9),(3,10),(6,5),(7,11),(8,12)" --linear --y_min=90 --y_max=110 -p served -n $SUFFIX --title-suffix="t9_6 vs No compression"
# SUFFIX=_random_1ov_3ov_t9_6_3
# SCENARIOS=-i24,31,32,33,72,60,67,68,69,34,35,70,71 # t9_6_3
# tools/plot.py $DATA $PUB_SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs="(1,0),(2,9),(3,10),(6,5),(7,11),(8,12)" --linear --y_min=90 --y_max=110 -p served -n $SUFFIX --title-suffix="t9_6_3 vs No compression"

# SUFFIX=_random_1ov_3ov_t9_6_t9_3
# SCENARIOS=-i28,29,30,64,65,66,25,26,27,61,62,63 # t9_6 t9_3
# tools/plot.py $DATA $PUB_SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs="(0,6,'1ov im 1.0'),(1,7,'1ov im 1.2'),(2,8,'1ov im 1.5'),(3,9,'3ov im 1.0'),(4,10,'3ov im 1.2'),(5,11,'3ov im 1.5')" --linear --y_min=95 --y_max=105 -p served -n $SUFFIX --title-suffix="t9_6 vs t9_3"

# SUFFIX=_random_1ov_3ov_t9_6_3_t9_6
# SCENARIOS=-i31,32,33,67,68,69,28,29,30,64,65,66 # t9_6_3 t9_6
# tools/plot.py $DATA $PUB_SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs="(0,6,'1ov im 1.0'),(1,7,'1ov im 1.2'),(2,8,'1ov im 1.5'),(3,9,'3ov im 1.0'),(4,10,'3ov im 1.2'),(5,11,'3ov im 1.5')" --linear --y_min=95 --y_max=105 -p served -n $SUFFIX --title-suffix="t9_6_3 vs t9_6"

# SUFFIX=_random_1ov_3ov_t9_6_3_t9_3
# SCENARIOS=-i31,32,33,67,68,69,25,26,27,61,62,63 # t9_6_3 t9_3
# tools/plot.py $DATA $PUB_SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs="(0,6,'1ov im 1.0'),(1,7,'1ov im 1.2'),(2,8,'1ov im 1.5'),(3,9,'3ov im 1.0'),(4,10,'3ov im 1.2'),(5,11,'3ov im 1.5')" --linear --y_min=95 --y_max=105 -p served -n $SUFFIX --title-suffix="t9_6_3 vs t9_3"


# # Highest free -- vs base
# SCENARIOS=-i24,25,26,27,96,60,61,62,63 # t9_3
# SUFFIX=_random_1ov_t9_3
# tools/plot.py $DATA $PUB_2SIZE $ARGS -x 4 -y 3 $SCENARIOS --relatives --pairs="(0,4),(1,0),(2,0),(3,0)" --linear --y_min=0 --y_max=300 -p P_block -n $SUFFIX --groups="('G0','G1','G2')"
# SUFFIX=_random_3ov_t9_3
# tools/plot.py $DATA $PUB_2SIZE $ARGS -x 4 -y 3 $SCENARIOS --relatives --pairs="(5,4),(6,0),(7,0),(8,0)" --linear --y_min=0 --y_max=300 -p P_block -n $SUFFIX --groups="('G0','G1','G2')"

# SCENARIOS=-i24,28,29,30,72,60,64,65,66 # t9_6
# SUFFIX=_random_1ov_t9_6
# tools/plot.py $DATA $PUB_2SIZE $ARGS -x 4 -y 3 $SCENARIOS --relatives --pairs="(0,4),(1,0),(2,0),(3,0)" --linear --y_min=0 --y_max=300 -p P_block -n $SUFFIX --groups="('G0','G1','G2')"
# SUFFIX=_random_3ov_t9_6
# tools/plot.py $DATA $PUB_2SIZE $ARGS -x 4 -y 3 $SCENARIOS --relatives --pairs="(5,4),(6,0),(7,0),(8,0)" --linear --y_min=0 --y_max=300 -p P_block -n $SUFFIX --groups="('G0','G1','G2')"

# SCENARIOS=-i24,31,32,33,72,60,67,68,69 # t9_6_3
# SUFFIX=_random_1ov_t9_6_3
# tools/plot.py $DATA $PUB_2SIZE $ARGS -x 4 -y 3 $SCENARIOS --relatives --pairs="(0,4),(1,0),(2,0),(3,0)" --linear --y_min=0 --y_max=300 -p P_block -n $SUFFIX --groups="('G0','G1','G2')"
# SUFFIX=_random_3ov_t9_6_3
# tools/plot.py $DATA $PUB_2SIZE $ARGS -x 4 -y 3 $SCENARIOS --relatives --pairs="(5,4),(6,0),(7,0),(8,0)" --linear --y_min=0 --y_max=300 -p P_block -n $SUFFIX --groups="('G0','G1','G2')"

# Highest free  vs the same intensity multiplier
# SCENARIOS=-i25,26,27,24,34,35 # t9_3
# SUFFIX=_random_1ov_t9_3_rim
# tools/plot.py $DATA $PUB_2SIZE $ARGS -x 3 -y 3 $SCENARIOS --relatives --pairs="(0,3),(1,4),(2,5)" --linear --y_min=0 --y_max=150 -p P_block -n $SUFFIX --groups="('G0','G1','G2')"
SCENARIOS=-i25,26,27,24,34,35 # t9_3
SUFFIX=_random_1ov_rim_f0
# tools/plot.py $DATA $PUB_3_1SIZE $ARGS -x 3 -y 1 -i0,10,11  --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix="3_1g - 1ov -- im 1.0, 1.2, 1.5 -- poprawić tytuły"
tools/plot.py $DATA $PUB_1_1SIZE $ARGS -x 1 -y 1 -i0  --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='- $f_{G2}=1.0$'
# SUFFIX=_random_3ov_t9_3_rim
# SCENARIOS=-i61,62,63,60,70,71 # t9_3
# tools/plot.py $DATA $PUB_2SIZE $ARGS -x 3 -y 3 $SCENARIOS --relatives --pairs="(0,3),(1,4),(2,5)" --linear --y_min=0 --y_max=150 -p P_block -n $SUFFIX --groups="('G0','G1','G2')"
# SCENARIOS=-i61,62,63,60,70,71 # t9_3
# SUFFIX=_random_3ov_rim
# tools/plot.py $DATA $PUB_3_1SIZE $ARGS -x 3 -y 1 -i36,46,47 --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix="3_1g - 3ov -- im 1.0, 1.2, 1.5 -- poprawić tytuły"

# SCENARIOS=-i28,29,30,24,34,35 # t9_6
# SUFFIX=_random_1ov_t9_6_rim
# tools/plot.py $DATA $PUB_2SIZE $ARGS -x 3 -y 3 $SCENARIOS --relatives --pairs="(0,3),(1,4),(2,5)" --linear --y_min=0 --y_max=150 -p P_block -n $SUFFIX --groups="('G0','G1','G2')"
# SUFFIX=_random_3ov_t9_6_rim
# SCENARIOS=-i64,65,66,60,70,71 # t9_6
# tools/plot.py $DATA $PUB_2SIZE $ARGS -x 3 -y 3 $SCENARIOS --relatives --pairs="(0,3),(1,4),(2,5)" --linear --y_min=0 --y_max=150 -p P_block -n $SUFFIX --groups="('G0','G1','G2')"

# SCENARIOS=-i31,32,33,24,34,35 # t9_6_3
# SUFFIX=_random_1ov_t9_6_3_rim
# tools/plot.py $DATA $PUB_2SIZE $ARGS -x 3 -y 3 $SCENARIOS --relatives --pairs="(0,3),(1,4),(2,5)" --linear --y_min=0 --y_max=150 -p P_block -n $SUFFIX --groups="('G0','G1','G2')"
# SUFFIX=_random_3ov_t9_6_3_rim
# SCENARIOS=-i67,68,69,60,70,71 # t9_6_3
# tools/plot.py $DATA $PUB_2SIZE $ARGS -x 3 -y 3 $SCENARIOS --relatives --pairs="(0,3),(1,4),(2,5)" --linear --y_min=0 --y_max=150 -p P_block -n $SUFFIX --groups="('G0','G1','G2')"


SUFFIX=_random_1ov_3ov_t9_int6_int3
SCENARIOS=-i24,34,35,60,70,71,90,91,92,99,100,101 # t9_6_3
tools/plot.py $DATA $PUB_1_1SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs='(6,0,"1ov - $f_{G2}=1.0$"),(7,1,"1ov - $f_{G2}=1.2$"),(8,2,"1ov - $f_{G2}=1.5$"),(9,3,"3ov - $f_{G2}=1.0$"),(10,4,"3ov - $f_{G2}=1.2$"),(11,5,"3ov - $f_{G2}=1.5$")' --linear --y_min=95 --y_max=105 -p served_u -n $SUFFIX --title-suffix='Elastic - $t_5=9\rightarrow 6\rightarrow 3$ vs No compression'

SUFFIX=_random_1ov_3ov_t9_int6_int3
SCENARIOS=-i24,34,35,60,70,71,90,91,92,99,100,101 # t9_6_3
tools/plot.py $DATA $PUB_1_1SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs='(6,0,"1ov - $f_{G2}=1.0$"),(7,1,"1ov - $f_{G2}=1.2$"),(8,2,"1ov - $f_{G2}=1.5$"),(9,3,"3ov - $f_{G2}=1.0$"),(10,4,"3ov - $f_{G2}=1.2$"),(11,5,"3ov - $f_{G2}=1.5$")' --linear --y_min=95 --y_max=105 -p served -n $SUFFIX --title-suffix='Elastic - $t_5=9\rightarrow 6\rightarrow 3$ vs No compression'

