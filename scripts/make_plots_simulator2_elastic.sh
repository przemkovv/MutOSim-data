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
DATA=data/results/simulator3/results_new.json
# DATA=data/results/simulator3/results_combined.json
FORMAT='--format=pdf'
# [(0, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json'),
  # (1, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
  # (2, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (3, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (4, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
  # (5, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (6, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (7, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
  # (8, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (9, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (10, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json'),
  # (11, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (12, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (13, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json'),
  # (14, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (15, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (16, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json'),
  # (17, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (18, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (19, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (20, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (21, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json'),
  # (22, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
  # (23, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (24, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (25, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
  # (26, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (27, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (28, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
  # (29, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (30, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (31, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json'),
  # (32, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (33, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (34, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json'),
  # (35, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (36, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (37, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json'),
  # (38, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (39, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (40, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (41, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (42, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json'),
  # (43, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
  # (44, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (45, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (46, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
  # (47, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (48, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (49, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
  # (50, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (51, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (52, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json'),
  # (53, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (54, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (55, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json'),
  # (56, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (57, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (58, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json'),
  # (59, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (60, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (61, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (62, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (63, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json'),
  # (64, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
  # (65, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (66, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (67, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
  # (68, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (69, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (70, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
  # (71, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (72, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (73, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json'),
  # (74, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (75, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (76, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json'),
  # (77, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (78, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (79, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json'),
  # (80, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (81, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (82, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (83, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (84, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json'),
  # (85, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
  # (86, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (87, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (88, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
  # (89, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (90, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (91, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
  # (92, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (93, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (94, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json'),
  # (95, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (96, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (97, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json'),
  # (98, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (99, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (100, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json'),
  # (101, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (102, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (103, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (104, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (105, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json'),
  # (106, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
  # (107, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (108, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (109, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
  # (110, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (111, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (112, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
  # (113, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (114, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (115, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json'),
  # (116, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (117, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (118, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json'),
  # (119, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (120, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (121, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json'),
  # (122, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (123, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (124, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (125, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (126, 'data/scenarios/threshold_mechanisms2/3_1g/base.json'),
  # (127, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
  # (128, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (129, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (130, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
  # (131, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (132, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (133, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
  # (134, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (135, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (136, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json'),
  # (137, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (138, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (139, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json'),
  # (140, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (141, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (142, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json'),
  # (143, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (144, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (145, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (146, 'data/scenarios/threshold_mechanisms2/3_1g/base.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (147, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json'),
  # (148, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
  # (149, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (150, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (151, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
  # (152, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (153, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (154, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
  # (155, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (156, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (157, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json'),
  # (158, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (159, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (160, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json'),
  # (161, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (162, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (163, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json'),
  # (164, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (165, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (166, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (167, 'data/scenarios/threshold_mechanisms2/3g/1ov/highest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (168, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json'),
  # (169, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
  # (170, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (171, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (172, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
  # (173, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (174, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (175, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
  # (176, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (177, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (178, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json'),
  # (179, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (180, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (181, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json'),
  # (182, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (183, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (184, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json'),
  # (185, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (186, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (187, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (188, 'data/scenarios/threshold_mechanisms2/3g/1ov/lowest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (189, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json'),
  # (190, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
  # (191, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (192, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (193, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
  # (194, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (195, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (196, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
  # (197, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (198, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (199, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json'),
  # (200, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (201, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (202, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json'),
  # (203, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (204, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (205, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json'),
  # (206, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (207, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (208, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (209, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (210, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json'),
  # (211, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
  # (212, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (213, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (214, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
  # (215, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (216, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (217, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
  # (218, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (219, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (220, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json'),
  # (221, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (222, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (223, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json'),
  # (224, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (225, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (226, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json'),
  # (227, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (228, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (229, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (230, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (231, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json'),
  # (232, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
  # (233, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (234, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (235, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
  # (236, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (237, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (238, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
  # (239, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (240, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (241, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json'),
  # (242, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (243, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (244, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json'),
  # (245, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (246, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (247, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json'),
  # (248, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (249, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (250, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (251, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (252, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json'),
  # (253, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
  # (254, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (255, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (256, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
  # (257, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (258, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (259, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
  # (260, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (261, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (262, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json'),
  # (263, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (264, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (265, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json'),
  # (266, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (267, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (268, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json'),
  # (269, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (270, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (271, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (272, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (273, 'data/scenarios/threshold_mechanisms2/3g/base.json'),
  # (274, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json'),
  # (275, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (276, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (277, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json'),
  # (278, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (279, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (280, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
  # (281, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (282, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (283, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json'),
  # (284, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (285, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (286, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json'),
  # (287, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (288, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_int66.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (289, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json'),
  # (290, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (291, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (292, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (293, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json')]



# (155, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (167, 'data/scenarios/threshold_mechanisms2/3g/base.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json')
# (119, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# SCENARIOS='-i167,155,119'
  # (252, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json'),
  # (273, 'data/scenarios/threshold_mechanisms2/3g/base.json'),
  # (209, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
SCENARIOS='-i273,252,209'

SUFFIX=_3g_noov_g1
$CMD $DATA $PUB_1_1SIZE_B $ARGS -i273 -x 1 -y 1  --bp --normal  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT
SUFFIX=_3g_noov_g2
$CMD $DATA $PUB_1_1SIZE_B $ARGS -i273 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT
SUFFIX=_3g_noov_g3
$CMD $DATA $PUB_1_1SIZE_B $ARGS -i273 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT

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
# SCENARIOS='-i31,24'
  # (42, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json'),
  # (49, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
SCENARIOS='-i42,49'
# SCENARIOS='-i62,45'
# SCENARIOS='-i189,196'

Y_LIMITS='--y_min=1e-7'
# SUFFIX=_3_1g_g1
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i3 -x 1 -y 1  --bp --normal  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_1ov_g2
$CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i42 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT
# SUFFIX=_3_1g_g3
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i3 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_1ov_g0
$CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i42 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G0')" --title-suffix='' $FORMAT

# SUFFIX=_3_1g_thr_g1
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i4 -x 1 -y 1  --bp --normal  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_1ov_t9_6_3_g2
$CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i49 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT
# SUFFIX=_3_1g_thr_g3
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i4 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT
SUFFIX=_3_1g_1ov_t9_6_3_g0
$CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS -i49 -x 1 -y 1 --bp --normal  -p P_block -n $SUFFIX --groups="('G0')" --title-suffix='' $FORMAT

SUFFIX=_3_1g_1ov_t9_6_3_sub_nothr
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relative-divs --pairs='(1,0,""),'  -p served_u -n $SUFFIX  --title-suffix='' $FORMAT --y_min=0 --y_max=50

SUFFIX=_3_1g_1ov_t9_6_3_sub_nothr
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relative-divs --pairs='(1,0,""),'  -p served -n $SUFFIX  --title-suffix='' $FORMAT --y_min=0 --y_max=50

SUFFIX=_3_1g_1ov_t9_6_3_div_nothr_g0
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G0')" --title-suffix='' $FORMAT --y_min=0 --y_max=180
SUFFIX=_3_1g_1ov_t9_6_3_div_nothr_g2
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT --y_min=0 --y_max=180

SUFFIX=_3_1g_1ov_t9_6_3_sub_nothr_g0
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G0')" --title-suffix='' $FORMAT --y_min=-0.4 --y_max=0.2
SUFFIX=_3_1g_1ov_t9_6_3_sub_nothr_g2
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT --y_min=-0.4 --y_max=0.2
# SUFFIX=_3_1g_thr_sub_nothr_g3
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G3')" --title-suffix='' $FORMAT --y_min=-0.5 --y_max=0.3
# SUFFIX=_3_1g_thr_sub_nothr_g1
# $CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relatives-diffs --pairs='(1,0),'  -p P_block -n $SUFFIX --groups="('G1')" --title-suffix='' $FORMAT --y_min=-0.5 --y_max=0.3




# (33, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# (35, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# SCENARIOS='-i35,33'
  # (51, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (62, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
# SCENARIOS='-i62,51'

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
# SCENARIOS='-i156,144,120,132'
  # (189, 'data/scenarios/threshold_mechanisms2/3g/1ov/random.json'),
  # (210, 'data/scenarios/threshold_mechanisms2/3g/3ov/highest_free.json'),
  # (231, 'data/scenarios/threshold_mechanisms2/3g/3ov/lowest_free.json'),
  # (252, 'data/scenarios/threshold_mechanisms2/3g/3ov/random.json'),
  # (273, 'data/scenarios/threshold_mechanisms2/3g/base.json'),
SCENARIOS='-i273,252,210,231'

Y_LIMITS='--y_min=1e-7'
SUFFIX=_no_mut
SCENARIOS='-i273'
$CMD $DATA $PUB_1_1SIZE_B $ARGS $Y_LIMITS $SCENARIOS -x 1 -y 1 --bp --normal -p P_block  -n $SUFFIX --groups="('G2')" --title-suffix='- No mutual overflows' $FORMAT
SUFFIX=_3ov_rand
SCENARIOS='-i252'
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --normal -p P_block --bp -n $SUFFIX --groups="('G2')" --title-suffix='' $FORMAT

SCENARIOS='-i273,189,252'
SUFFIX=_3g_all
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relative-divs --pairs="(1,0,'1 mutually overflowing - '),(2,0,'3 mutually overflowing - ')" -p served_u -n $SUFFIX  --title-suffix='' $FORMAT --y_min=95 --y_max=115
$CMD $DATA $PUB_1_1SIZE_B $ARGS $SCENARIOS -x 1 -y 1 --linear  --relative-divs --pairs="(1,0,'1 mutually overflowing - '),(2,0,'3 mutually overflowing - ')" -p served -n $SUFFIX  --title-suffix='' $FORMAT --y_min=95 --y_max=115


# SCENARIOS='-i144,120,132'
SCENARIOS='-i252,210,231'
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

  # (105, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json'),
  # (112, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
  # (124, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (113, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (125, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (114, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),

# SCENARIOS=-i60,67,70,68,71,69
SCENARIOS=-i105,112,124,113,125,114
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


  # (42, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json'),
  # (49, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
  # (61, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (50, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (62, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (51, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (105, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json'),
  # (112, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
  # (124, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (113, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (125, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (114, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),

# SCENARIOS=-i24,31,34,32,35,33,60,67,70,68,71,69
SCENARIOS=-i42,49,61,50,62,51,105,112,124,113,125,114
SUFFIX=_3_1g_random_1ov_3ov_t9_6_3
tools/plot.py $DATA $PUB_1_1SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs='(1,0,"1ov - $f_{G2}=1.0$"),(3,2,"1ov - $f_{G2}=1.2$"),(5,4,"1ov - $f_{G2}=1.5$"),(7,6,"3ov - $f_{G2}=1.0$"),(9,8,"3ov - $f_{G2}=1.2$"),(11,10,"3ov - $f_{G2}=1.5$")' --linear --y_min=10 --y_max=30 -p served_u -n $SUFFIX --title-suffix='Adaptive - $t_5=9\rightarrow 6\rightarrow 3$ vs No compression' --groups="('G2')" --no-pair-suffix

SUFFIX=_3_1g_random_1ov_3ov_t9_6_3
tools/plot.py $DATA $PUB_1_1SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs='(1,0,"1ov - $f_{G2}=1.0$"),(3,2,"1ov - $f_{G2}=1.2$"),(5,4,"1ov - $f_{G2}=1.5$"),(7,6,"3ov - $f_{G2}=1.0$"),(9,8,"3ov - $f_{G2}=1.2$"),(11,10,"3ov - $f_{G2}=1.5$")' --linear --y_min=10 --y_max=30 -p served -n $SUFFIX --title-suffix='Adaptive - $t_5=9\rightarrow 6\rightarrow 3$ vs No compression' --groups="('G2')" --no-pair-suffix

  # (42, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json'),
  # (49, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
  # (61, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (50, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (62, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (51, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (105, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json'),
  # (112, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json'),
  # (124, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (113, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (125, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (114, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_6_3.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),

  # (42, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json'),
  # (58, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json'),
  # (61, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (59, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (62, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (60, 'data/scenarios/threshold_mechanisms2/3_1g/1ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (105, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json'),
  # (121, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json'),
  # (124, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (122, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.2.json'),
  # (125, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),
  # (123, 'data/scenarios/threshold_mechanisms2/3_1g/3ov/random.json;data/scenarios/threshold_mechanisms2/compression/t9_int66_int33.json;data/scenarios/threshold_mechanisms2/overload/im_1.5.json'),

# SCENARIOS=-i24,31,34,32,35,33,60,67,70,68,71,69
SCENARIOS=-i42,58,61,59,62,60,105,121,124,122,125,123
SUFFIX=_3_1g_random_1ov_3ov_t9_int6_int3
tools/plot.py $DATA $PUB_1_1SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs='(1,0,"1ov - $f_{G2}=1.0$"),(3,2,"1ov - $f_{G2}=1.2$"),(5,4,"1ov - $f_{G2}=1.5$"),(7,6,"3ov - $f_{G2}=1.0$"),(9,8,"3ov - $f_{G2}=1.2$"),(11,10,"3ov - $f_{G2}=1.5$")' --linear --y_min=90 --y_max=150 -p served_u -n $SUFFIX --title-suffix='Elastic - $t_c=9\rightarrow 6\rightarrow 3$ vs No compression' --groups="('G2')" --no-pair-suffix

SUFFIX=_3_1g_random_1ov_3ov_t9_int6_int3
tools/plot.py $DATA $PUB_1_1SIZE $ARGS -x 1 -y 1 $SCENARIOS --relative-divs --pairs='(1,0,"1ov - $f_{G2}=1.0$"),(3,2,"1ov - $f_{G2}=1.2$"),(5,4,"1ov - $f_{G2}=1.5$"),(7,6,"3ov - $f_{G2}=1.0$"),(9,8,"3ov - $f_{G2}=1.2$"),(11,10,"3ov - $f_{G2}=1.5$")' --linear --y_min=50 --y_max=150 -p served -n $SUFFIX --title-suffix='Elastic - $t_c=9\rightarrow 6\rightarrow 3$ vs No compression' --groups="('G2')" --no-pair-suffix
