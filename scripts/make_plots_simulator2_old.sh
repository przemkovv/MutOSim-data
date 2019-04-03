#!/bin/sh

set -x
CMD='tools/plot.py'
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
ARGS="$X_LIMITS -s --output-dir data/results/plots/simulator3 -q"
DATA=data/results/simulator3/results.json
FORMAT='--format=pdf'
# [(0, 'data/scenarios/simulator_publication/3_1g_im1_5_mut_ov.json'),
 # (1, 'data/scenarios/simulator_publication/3_1g_im1_5_mut_ov_t9_6.json'),
 # (2, 'data/scenarios/simulator_publication/3_1g_im1_5_mut_ov_t9_6_3.json'),
 # (3, 'data/scenarios/simulator_publication/3_1g_mut_ov.json'),
 # (4, 'data/scenarios/simulator_publication/3_1g_mut_ov_t9_6_3.json'),
 # (5, 'data/scenarios/simulator_publication/3g_im1_5.json'),
 # (6, 'data/scenarios/simulator_publication/3g_im1_5_mut_ov.json')]

# (0, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json'),
# (1, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
# (2, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (3, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (4, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
# (5, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (6, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (7, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
# (8, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (9, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (10, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (11, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (12, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json'),
# (13, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
# (14, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (15, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (16, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
# (17, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (18, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (19, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
# (20, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (21, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (22, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (23, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (24, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json'),
# (25, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
# (26, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (27, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (28, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
# (29, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (30, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (31, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
# (32, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (33, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (34, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (35, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (36, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json'),
# (37, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
# (38, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (39, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (40, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
# (41, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (42, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (43, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
# (44, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (45, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (46, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (47, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (48, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json'),
# (49, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
# (50, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (51, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (52, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
# (53, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (54, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (55, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
# (56, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (57, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (58, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (59, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (60, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json'),
# (61, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
# (62, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (63, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (64, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
# (65, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (66, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (67, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
# (68, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (69, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (70, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (71, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (72, 'data/scenarios/threshold_mechanisms2/3_1g/base.json'),
# (73, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
# (74, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (75, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (76, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
# (77, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (78, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (79, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
# (80, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (81, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (82, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (83, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (84, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json'),
# (85, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
# (86, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (87, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (88, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
# (89, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (90, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (91, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
# (92, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (93, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (94, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (95, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (96, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json'),
# (97, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
# (98, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (99, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (100, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
# (101, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (102, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (103, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
# (104, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (105, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (106, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (107, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (108, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json'),
# (109, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
# (110, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (111, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (112, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
# (113, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (114, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (115, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
# (116, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (117, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (118, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (119, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (120, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json'),
# (121, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
# (122, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (123, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (124, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
# (125, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (126, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (127, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
# (128, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (129, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (130, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (131, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (132, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json'),
# (133, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
# (134, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (135, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (136, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
# (137, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (138, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (139, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
# (140, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (141, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (142, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (143, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (144, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json'),
# (145, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
# (146, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (147, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (148, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
# (149, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (150, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (151, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
# (152, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (153, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (154, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (155, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (156, 'data/scenarios/threshold_mechanisms2/3g/base.json'),
# (157, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
# (158, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (159, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (160, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
# (161, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (162, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (163, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
# (164, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (165, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (166, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (167, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json')



# (155, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (167, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json')
# (119, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
SCENARIOS='-i167,155,119'

SUFFIX=_3g_noov_g1
$CMD $DATA $PUB_1_1SIZE_B $ARGS -i167 -x 1 -y 1  --bp --normal  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT
SUFFIX=_3g_noov_g2
$CMD $DATA $PUB_1_1SIZE_B $ARGS -i167 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT
SUFFIX=_3g_noov_g3
$CMD $DATA $PUB_1_1SIZE_B $ARGS -i167 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT

# SUFFIX=3g_mut_g1
# $CMD $DATA $PUB_1_1SIZE_B $ARGS -i6 -x 1 -y 1  --bp --normal  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT
# SUFFIX=3g_mut_g2
# $CMD $DATA $PUB_1_1SIZE_B $ARGS -i6 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT
# SUFFIX=3g_mut_g3
# $CMD $DATA $PUB_1_1SIZE_B $ARGS -i6 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT


SUFFIX=_3g_3ov_sub_noov
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relative-divs --pairs='(1,0,""),'  -p served_u -n $SUFFIX  --title-suffix='' $FORMAT --y_min=90 --y_max=120

SUFFIX=_3g_3ov_sub_noov
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relative-divs --pairs='(1,0,""),'  -p served -n $SUFFIX  --title-suffix='' $FORMAT --y_min=90 --y_max=120

# SUFFIX=_3g_3ov_sub_noov_g1
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT --y_min=-0.2 --y_max=0.4

SUFFIX=_3g_1ov_sub_noov_g1
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(2,0),'  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT --y_min=-0.2 --y_max=0.4

SUFFIX=_3g_1ov_sub_noov_g2
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(2,0),'  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT --y_min=-0.2 --y_max=0.4

SUFFIX=_3g_3ov_sub_noov_g1
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT --y_min=-0.2 --y_max=0.4

SUFFIX=_3g_3ov_sub_noov_g2
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT --y_min=-0.2 --y_max=0.4

# SUFFIX=_3g_3ov_sub_noov_g3
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT --y_min=-0.2 --y_max=0.4


# (24, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json'),
# (31, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
SCENARIOS='-i24,31'

Y_LIMITS='--y_min=1e-7'
# SUFFIX=_3_1g_g1
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i3 -x 1 -y 1  --bp --normal  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_1ov_g2
$CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i24 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT
# SUFFIX=_3_1g_g3
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i3 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_1ov_g0
$CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i24 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G0')" --title-suffix='' $FORMAT

# SUFFIX=_3_1g_thr_g1
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i4 -x 1 -y 1  --bp --normal  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_1ov_t9_6_3_g2
$CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i31 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT
# SUFFIX=_3_1g_thr_g3
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i4 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_1ov_t9_6_3_g0
$CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i31 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G0')" --title-suffix='' $FORMAT

SUFFIX=_3_1g_1ov_t9_6_3_sub_nothr
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relative-divs --pairs='(1,0,""),'  -p served_u -n $SUFFIX  --title-suffix='' $FORMAT --y_min=0 --y_max=130

SUFFIX=_3_1g_1ov_t9_6_3_sub_nothr
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relative-divs --pairs='(1,0,""),'  -p served -n $SUFFIX  --title-suffix='' $FORMAT --y_min=0 --y_max=130

SUFFIX=_3_1g_1ov_t9_6_3_div_nothr_g0
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G0')" --title-suffix='' $FORMAT --y_min=-10 --y_max=180
SUFFIX=_3_1g_1ov_t9_6_3_div_nothr_g2
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT --y_min=-10 --y_max=180

SUFFIX=_3_1g_1ov_t9_6_3_sub_nothr_g0
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G0')" --title-suffix='' $FORMAT --y_min=-0.5 --y_max=0.3
SUFFIX=_3_1g_1ov_t9_6_3_sub_nothr_g2
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT --y_min=-0.5 --y_max=0.3
# SUFFIX=_3_1g_thr_sub_nothr_g3
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT --y_min=-0.5 --y_max=0.3
# SUFFIX=_3_1g_thr_sub_nothr_g1
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT --y_min=-0.5 --y_max=0.3




# (33, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (35, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# SCENARIOS='-i35,33'

# Y_LIMITS='--y_min=1e-7'
# SUFFIX=_3_1g_g1_im1_5
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i0 -x 1 -y 1  --bp --normal  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT
# SUFFIX=_3_1g_g2_im1_5
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i0 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT
# SUFFIX=_3_1g_g3_im1_5
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i0 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT
# SUFFIX=_3_1g_g0_im1_5
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i0 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G0')" --title-suffix='' $FORMAT

# SUFFIX=_3_1g_thr_g1_im1_5
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i2 -x 1 -y 1  --bp --normal  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT
# SUFFIX=_3_1g_thr_g2_im1_5
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i2 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT
# SUFFIX=_3_1g_thr_g3_im1_5
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i2 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT
# SUFFIX=_3_1g_thr_g0_im1_5
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i2 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G0')" --title-suffix='' $FORMAT

# SUFFIX=_3_1g_thr_sub_nothr_im1_5
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relative-divs --pairs='(1,0,""),'  -p served_u -n $SUFFIX  --title-suffix='' $FORMAT --y_min=0 --y_max=150

# SUFFIX=_3_1g_thr_sub_nothr_im1_5
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relative-divs --pairs='(1,0,""),'  -p served -n $SUFFIX  --title-suffix='' $FORMAT --y_min=0 --y_max=150

# SUFFIX=_3_1g_thr_sub_nothr_g0_im1_5
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G0')" --title-suffix='' $FORMAT --y_min=-0.4 --y_max=0.4
# SUFFIX=_3_1g_thr_sub_nothr_g2_im1_5
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT --y_min=-0.5 --y_max=0.3
# SUFFIX=_3_1g_thr_sub_nothr_g3_im1_5
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT --y_min=-0.5 --y_max=0.3
# SUFFIX=_3_1g_thr_sub_nothr_g1_im1_5
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT --y_min=-0.5 --y_max=0.3


# (108, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json'),
# (120, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json'),
# (132, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json'),
# (144, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json'),
# (156, 'data/scenarios/threshold_mechanisms2/3g/base.json'),
SCENARIOS='-i156,144,120,132'

Y_LIMITS='--y_min=1e-7'
SUFFIX=_no_mut
SCENARIOS='-i156'
$CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS $SCENARIOS -x 1 -y 1 --bp --normal -p P_block  -n $SUFFIX --groups="('G2')" --title-suffix='- No mutual overflows' $FORMAT
SUFFIX=_3ov_rand
SCENARIOS='-i144'
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --normal -p P_block --bp -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT

SCENARIOS='-i156,108,144'
SUFFIX=_3g_all
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relative-divs --pairs="(1,0,'1 mutually overflowing - '),(2,0,'3 mutually overflowing - ')" -p served_u -n $SUFFIX  --title-suffix='' $FORMAT --y_min=95 --y_max=115
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relative-divs --pairs="(1,0,'1 mutually overflowing - '),(2,0,'3 mutually overflowing - ')" -p served -n $SUFFIX  --title-suffix='' $FORMAT --y_min=95 --y_max=115


SCENARIOS='-i144,120,132'
SUFFIX=_3g_3ov_high_vs_rand
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear --relatives --pairs="(1,0, 'Highest free policy vs random')," -p P_block --groups="('G2')" -n $SUFFIX  --title-suffix='- Highest free policy vs random' $FORMAT --y_min=70 --y_max=115
SUFFIX=_3g_3ov_low_vs_rand
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear --relatives --pairs="(2,0, 'Lowest free policy vs random')," -p P_block --groups="('G2')" -n $SUFFIX  --title-suffix='- Lowest free policy vs random' $FORMAT --y_min=95 --y_max=130



# (60, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json'),
# (67, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
# (70, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (68, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (71, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (69, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),

SCENARIOS=-i60,67,70,68,71,69
SUFFIX=_random_3_1g_3ov_t9_6_3_rim_g0
tools/plot.py $DATA $PUB_3_1SIZE $ARGS -x 3 -y 1 $SCENARIOS --relatives --pairs='(1,0," - $f_{G2}=1.0$"),(3,2," - $f_{G2}=1.2$"),(5,4," - $f_{G2}=1.5$")' --linear --y_min=0 --y_max=170 -p P_block -n $SUFFIX --groups="('G0')"
SUFFIX=_random_3_1g_3ov_t9_6_3_rim_g2
tools/plot.py $DATA $PUB_3_1SIZE $ARGS -x 3 -y 1 $SCENARIOS --relatives --pairs='(1,0," - $f_{G2}=1.0$"),(3,2," - $f_{G2}=1.2$"),(5,4," - $f_{G2}=1.5$")' --linear --y_min=0 --y_max=170 -p P_block -n $SUFFIX --groups="('G2')"

# SCENARIOS=-i90,91,92,24,34,35 # t9_6_3
# SUFFIX=_random_3ov_t9_int6_int3_rim_g1
# SCENARIOS=-i99,100,101,60,70,71 # t9_6_3
# tools/plot.py $DATA $PUB_3_1SIZE $ARGS -x 3 -y 1 $SCENARIOS --relatives --pairs='(0,3," - $f_{G2}=1.0$"),(1,4," - $f_{G2}=1.2$"),(2,5," - $f_{G2}=1.5$")' --linear --y_min=0 --y_max=175 -p P_block -n $SUFFIX --groups="('G1')"
# SUFFIX=_random_3ov_t9_int6_int3_rim_g2
# SCENARIOS=-i99,100,101,60,70,71 # t9_6_3
# tools/plot.py $DATA $PUB_3_1SIZE $ARGS -x 3 -y 1 $SCENARIOS --relatives --pairs='(0,3," - $f_{G2}=1.0$"),(1,4," - $f_{G2}=1.2$"),(2,5," - $f_{G2}=1.5$")' --linear --y_min=0 --y_max=175 -p P_block -n $SUFFIX --groups="('G2')"

# (24, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json'),
# (31, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
# (34, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (32, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (35, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (33, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (60, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json'),
# (67, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
# (70, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (68, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
# (71, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (69, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),

SCENARIOS=-i24,31,34,32,35,33,60,67,70,68,71,69
SUFFIX=_3_1g_random_1ov_3ov_t9_6_3
tools/plot.py $DATA $PUB_1_1SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs='(1,0,"1ov - $f_{G2}=1.0$"),(3,2,"1ov - $f_{G2}=1.2$"),(5,4,"1ov - $f_{G2}=1.5$"),(7,6,"3ov - $f_{G2}=1.0$"),(9,8,"3ov - $f_{G2}=1.2$"),(11,10,"3ov - $f_{G2}=1.5$")' --linear --y_min=80 --y_max=130 -p served_u -n $SUFFIX --title-suffix='Adaptive - $t_c=9\rightarrow 6\rightarrow 3$ vs No compression' --groups="('G2')" --no-pair-suffix

SUFFIX=_3_1g_random_1ov_3ov_t9_6_3
tools/plot.py $DATA $PUB_1_1SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs='(1,0,"1ov - $f_{G2}=1.0$"),(3,2,"1ov - $f_{G2}=1.2$"),(5,4,"1ov - $f_{G2}=1.5$"),(7,6,"3ov - $f_{G2}=1.0$"),(9,8,"3ov - $f_{G2}=1.2$"),(11,10,"3ov - $f_{G2}=1.5$")' --linear --y_min=90 --y_max=150 -p served -n $SUFFIX --title-suffix='Adaptive - $t_c=9\rightarrow 6\rightarrow 3$ vs No compression' --groups="('G2')" --no-pair-suffix
