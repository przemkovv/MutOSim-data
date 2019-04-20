#!/bin/sh
# set -x

PLOT=tools/plot.py
OUT_DIR="--output-dir=data/results/plots/layer_types"

if [[ $1 -eq 1 ]]; then
  SAVE="--quiet --save"
fi


# DATA="data/results/layer_types/eq2.json"
# RANGE="--x_max=2.4 --x_min=0.7"
# DATA="data/results/layer_types/eq4_30.json"
DATA="data/results/layer_types/eq_m.json"
# DATA="data/results/layer_types/out6.json"
RANGE="--x_max=2.4 --x_min=0.3"
GROUP="--groups=\"('G2',)\""
SIZE1="--width=10 --height=5"
SIZE2="--width=10 --height=10"
SIZE3="--width=10 --height=15"

# 0, 'data/scenarios/analytical/layer_types/base.json'
# 1, 'data/scenarios/analytical/layer_types/base.json;analytic;KRFixedCapacity'
# 2, 'data/scenarios/analytical/layer_types/base.json;analytic;KRFixedReqSize'
# 3, 'data/scenarios/analytical/layer_types/equal60.json'
# 4, 'data/scenarios/analytical/layer_types/equal60.json;analytic;KRFixedCapacity'
# 5, 'data/scenarios/analytical/layer_types/equal60.json;analytic;KRFixedReqSize'
# 6, 'data/scenarios/analytical/layer_types/equal60_mutov.json'
# 7, 'data/scenarios/analytical/layer_types/equal60_mutov.json;analytic;KRFixedCapacity'
# 8, 'data/scenarios/analytical/layer_types/equal60_mutov.json;analytic;KRFixedReqSize'
# 9, 'data/scenarios/analytical/layer_types/nonequal.json'
# 10, 'data/scenarios/analytical/layer_types/nonequal.json;analytic;KRFixedCapacity'
# 11, 'data/scenarios/analytical/layer_types/nonequal.json;analytic;KRFixedReqSize'
# 12, 'data/scenarios/analytical/layer_types/nonequal_mutov.json'
# 13, 'data/scenarios/analytical/layer_types/nonequal_mutov.json;analytic;KRFixedCapacity'
# 14, 'data/scenarios/analytical/layer_types/nonequal_mutov.json;analytic;KRFixedReqSize'

# function plots {
  # SF=$2
  # TC=$1
  # GROUP=$3

  # SUFFIX=-n_similarity_base${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(1,0),(2,0),(2,1)," --y_min=-0.01 --y_max=0.01  ${SAVE} ${SUFFIX} ${SIZE2} ${TC}
  # SUFFIX=-n_similarity_equal6${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(4,3),(5,3),(5,4)," --y_min=-0.01 --y_max=0.01   ${SAVE} ${SUFFIX} ${SIZE2} ${TC}
  # SUFFIX=-n_similarity_equal60_mutov${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(7,6),(8,6),(8,7)," --y_min=-0.5 --y_max=0.1   ${SAVE} ${SUFFIX} ${SIZE2} ${TC}
  # SUFFIX=-n_similarity_noneq${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(10,9),(11,9),(11,10)," --y_min=-0.01 --y_max=0.01   ${SAVE} ${SUFFIX} ${SIZE2} ${TC}
  # SUFFIX=-n_similarity_noneq_mutov${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(13,12),(14,12),(14,13)," --y_min=-0.5 --y_max=0.3   ${SAVE} ${SUFFIX} ${SIZE2} ${TC}

  # SUFFIX=-n_similarity_base_kr${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(2,1)," --y_min=-0.01 --y_max=0.01  ${SAVE} ${SUFFIX} ${SIZE2} ${TC}
  # SUFFIX=-n_similarity_equal_kr${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(5,4),(8,7)," --y_min=-0.01 --y_max=0.01   ${SAVE} ${SUFFIX} ${SIZE2} ${TC}
  # SUFFIX=-n_similarity_noneq_kr${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(11,10),(14,13)," --y_min=-0.01 --y_max=0.01   ${SAVE} ${SUFFIX} ${SIZE2} ${TC}

  # Y_LIMITS="--y_min=1e-3"
  # SUFFIX=-n_base_P_bloc${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 -i0,1,2 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS}
  # SUFFIX=-n_equal60_P_bloc${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 -i3,4,5 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS}
  # SUFFIX=-n_equal60_mutov_P_bloc${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 -i6,7,8 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS}
  # SUFFIX=-n_noneq_P_bloc${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 -i9,10,11 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS}
  # SUFFIX=-n_noneq_mutov_P_bloc${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 -i12,13,14 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS}


# }

# function plots {
  # SF=$2
  # TC=$1
  # GROUP=$3

  # SUFFIX=-n_similarity_base${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(1,0),(2,0),(2,1)," --y_min=-0.05 --y_max=0.05  ${SAVE} ${SUFFIX} ${SIZE2} ${TC}
  # SUFFIX=-n_similarity_equal6${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(4,3),(5,3),(5,4)," --y_min=-0.05 --y_max=0.05   ${SAVE} ${SUFFIX} ${SIZE2} ${TC}
  # SUFFIX=-n_similarity_equal60_mutov${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(7,6),(8,6),(8,7)," --y_min=-0.1 --y_max=0.3   ${SAVE} ${SUFFIX} ${SIZE2} ${TC}
  # SUFFIX=-n_similarity_noneq${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(10,9),(11,9),(11,10)," --y_min=-0.05 --y_max=0.05   ${SAVE} ${SUFFIX} ${SIZE2} ${TC}
  # SUFFIX=-n_similarity_noneq_mutov${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(13,12),(14,12),(14,13)," --y_min=-0.5 --y_max=0.3   ${SAVE} ${SUFFIX} ${SIZE2} ${TC}

  # SUFFIX=-n_similarity_base_kr${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(2,1)," --y_min=-0.05 --y_max=0.05  ${SAVE} ${SUFFIX} ${SIZE2} ${TC}
  # SUFFIX=-n_similarity_equal_kr${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(5,4),(8,7)," --y_min=-0.05 --y_max=0.05   ${SAVE} ${SUFFIX} ${SIZE2} ${TC}
  # SUFFIX=-n_similarity_noneq_kr${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(11,10),(14,13)," --y_min=-0.05 --y_max=0.05   ${SAVE} ${SUFFIX} ${SIZE2} ${TC}

  # Y_LIMITS="--y_min=1e-3"
  # SUFFIX=-n_base_P_bloc${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 -i0,1,2 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS}
  # SUFFIX=-n_equal60_P_bloc${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 -i3,4,5 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS}
  # SUFFIX=-n_equal60_mutov_P_bloc${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 -i6,7,8 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS}
  # SUFFIX=-n_noneq_P_bloc${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 -i9,10,11 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS}
  # SUFFIX=-n_noneq_mutov_P_bloc${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 -i12,13,14 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS}


# }
function plots {
  SF=$2
  TC=$1
  GROUP=$3

  # SUFFIX=-n_similarity_base${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(1,0),(2,0),(2,1)," --y_min=-0.05 --y_max=0.05  ${SAVE} ${SUFFIX} ${SIZE2} ${TC}

# 0, 'data/scenarios/analytical/layer_types/base.json'
# 1, 'data/scenarios/analytical/layer_types/base.json;analytic;KRFixedCapacity'
# 2, 'data/scenarios/analytical/layer_types/base.json;analytic;KRFixedReqSize'
# 3, 'data/scenarios/analytical/layer_types/equal60.json'
# 4, 'data/scenarios/analytical/layer_types/equal60.json;analytic;KRFixedCapacity'
# 5, 'data/scenarios/analytical/layer_types/equal60.json;analytic;KRFixedReqSize'
# 6, 'data/scenarios/analytical/layer_types/equal60_mutov.json'
# 7, 'data/scenarios/analytical/layer_types/equal60_mutov.json;analytic;KRFixedCapacity'
# 8, 'data/scenarios/analytical/layer_types/equal60_mutov.json;analytic;KRFixedReqSize'
# 9, 'data/scenarios/analytical/layer_types/nonequal.json'
# 10, 'data/scenarios/analytical/layer_types/nonequal.json;analytic;KRFixedCapacity'
# 11, 'data/scenarios/analytical/layer_types/nonequal.json;analytic;KRFixedReqSize'
# 12, 'data/scenarios/analytical/layer_types/nonequal_mutov.json'
# 13, 'data/scenarios/analytical/layer_types/nonequal_mutov.json;analytic;KRFixedCapacity'
# 14, 'data/scenarios/analytical/layer_types/nonequal_mutov.json;analytic;KRFixedReqSize'

  Y_LIMITS="--y_min=1e-3"

  SUFFIX=-n_base_cap${SF}
  $PLOT $DATA $OUT_DIR -x2 -y1 -i0,1 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE2} ${Y_LIMITS} ${TC}
  $PLOT $DATA $OUT_DIR -x1 -y1 -i0,1 --normal_single -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE1} ${Y_LIMITS} ${TC}
  return
  SUFFIX=-n_base_size${SF}
  $PLOT $DATA $OUT_DIR -x1 -y1 -i0,2 --normal_single -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE1} ${Y_LIMITS} ${TC}
  $PLOT $DATA $OUT_DIR -x2 -y1 -i0,2 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE2} ${Y_LIMITS} ${TC}
  SUFFIX=-n_equal_cap${SF}
  $PLOT $DATA $OUT_DIR -x1 -y1 -i3,4 --normal_single -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE1} ${Y_LIMITS} ${TC}
  $PLOT $DATA $OUT_DIR -x2 -y1 -i3,4 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE2} ${Y_LIMITS} ${TC}
  SUFFIX=-n_equal_size${SF}
  $PLOT $DATA $OUT_DIR -x1 -y1 -i3,5 --normal_single -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE1} ${Y_LIMITS} ${TC}
  $PLOT $DATA $OUT_DIR -x2 -y1 -i3,5 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE2} ${Y_LIMITS} ${TC}
  SUFFIX=-n_equal_mut_cap${SF}
  $PLOT $DATA $OUT_DIR -x1 -y1 -i6,7 --normal_single -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE1} ${Y_LIMITS} ${TC}
  $PLOT $DATA $OUT_DIR -x2 -y1 -i6,7 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE2} ${Y_LIMITS} ${TC}
  SUFFIX=-n_equal_mut_size${SF}
  $PLOT $DATA $OUT_DIR -x1 -y1 -i6,8 --normal_single -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE1} ${Y_LIMITS} ${TC}
  $PLOT $DATA $OUT_DIR -x2 -y1 -i6,8 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE2} ${Y_LIMITS} ${TC}
  SUFFIX=-n_nonequal_cap${SF}
  $PLOT $DATA $OUT_DIR -x1 -y1 -i9,10 --normal_single -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE1} ${Y_LIMITS} ${TC}
  $PLOT $DATA $OUT_DIR -x2 -y1 -i9,10 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE2} ${Y_LIMITS} ${TC}
  SUFFIX=-n_nonequal_size${SF}
  $PLOT $DATA $OUT_DIR -x1 -y1 -i9,11 --normal_single -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE1} ${Y_LIMITS} ${TC}
  $PLOT $DATA $OUT_DIR -x2 -y1 -i9,11 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE2} ${Y_LIMITS} ${TC}
  SUFFIX=-n_nonequal_mut_cap${SF}
  $PLOT $DATA $OUT_DIR -x1 -y1 -i12,13 --normal_single -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE1} ${Y_LIMITS} ${TC}
  $PLOT $DATA $OUT_DIR -x2 -y1 -i12,13 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE2} ${Y_LIMITS} ${TC}
  SUFFIX=-n_nonequal_mut_size${SF}
  $PLOT $DATA $OUT_DIR -x4 -y1 -i12,14 --normal_single -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE1} ${Y_LIMITS} ${TC}
  $PLOT $DATA $OUT_DIR -x2 -y1 -i12,14 --normal -p P_block ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE2} ${Y_LIMITS} ${TC}

}
function plots2 {
  SF=$2
  TC=$1
  GROUP=$3

  # SUFFIX=-n_similarity_base${SF}
  # $PLOT $DATA $OUT_DIR -x3 -y1 --relatives-diffs --linear -p P_block ${GROUP} ${RANGE} --pairs="(1,0),(2,0),(2,1)," --y_min=-0.05 --y_max=0.05  ${SAVE} ${SUFFIX} ${SIZE2} ${TC}

# 0, 'data/scenarios/analytical/layer_types/base.json'
# 1, 'data/scenarios/analytical/layer_types/base.json;analytic;KRFixedCapacity'
# 2, 'data/scenarios/analytical/layer_types/base.json;analytic;KRFixedReqSize'
# 3, 'data/scenarios/analytical/layer_types/equal60.json'
# 4, 'data/scenarios/analytical/layer_types/equal60.json;analytic;KRFixedCapacity'
# 5, 'data/scenarios/analytical/layer_types/equal60.json;analytic;KRFixedReqSize'
# 6, 'data/scenarios/analytical/layer_types/equal60_mutov.json'
# 7, 'data/scenarios/analytical/layer_types/equal60_mutov.json;analytic;KRFixedCapacity'
# 8, 'data/scenarios/analytical/layer_types/equal60_mutov.json;analytic;KRFixedReqSize'
# 9, 'data/scenarios/analytical/layer_types/nonequal.json'
# 10, 'data/scenarios/analytical/layer_types/nonequal.json;analytic;KRFixedCapacity'
# 11, 'data/scenarios/analytical/layer_types/nonequal.json;analytic;KRFixedReqSize'
# 12, 'data/scenarios/analytical/layer_types/nonequal_mutov.json'
# 13, 'data/scenarios/analytical/layer_types/nonequal_mutov.json;analytic;KRFixedCapacity'
# 14, 'data/scenarios/analytical/layer_types/nonequal_mutov.json;analytic;KRFixedReqSize'

  Y_LIMITS="--y_min=1e-3"

  SUFFIX=-n_base_cap_${SF}_rec
  $PLOT $DATA $OUT_DIR -x4 -y1 -i0 --normal -p P_block_recursive ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS} ${TC}
  SUFFIX=-n_base_size_${SF}_rec
  $PLOT $DATA $OUT_DIR -x4 -y1 -i0 --normal -p P_block_recursive ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS} ${TC}
  SUFFIX=-n_equal_cap_${SF}_rec
  $PLOT $DATA $OUT_DIR -x4 -y1 -i3 --normal -p P_block_recursive ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS} ${TC}
  SUFFIX=-n_equal_size_${SF}_rec
  $PLOT $DATA $OUT_DIR -x4 -y1 -i3 --normal -p P_block_recursive ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS} ${TC}
  SUFFIX=-n_equal_mut_cap_${SF}_rec
  $PLOT $DATA $OUT_DIR -x4 -y1 -i6 --normal -p P_block_recursive ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS} ${TC}
  SUFFIX=-n_equal_mut_size_${SF}_rec
  $PLOT $DATA $OUT_DIR -x4 -y1 -i6 --normal -p P_block_recursive ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS} ${TC}
  SUFFIX=-n_nonequal_cap_${SF}_rec
  $PLOT $DATA $OUT_DIR -x4 -y1 -i9 --normal -p P_block_recursive ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS} ${TC}
  SUFFIX=-n_nonequal_size_${SF}_rec
  $PLOT $DATA $OUT_DIR -x4 -y1 -i9 --normal -p P_block_recursive ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS} ${TC}
  SUFFIX=-n_nonequal_mut_cap_${SF}_rec
  $PLOT $DATA $OUT_DIR -x4 -y1 -i12 --normal -p P_block_recursive ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS} ${TC}
  SUFFIX=-n_nonequal_mut_size_${SF}_rec
  $PLOT $DATA $OUT_DIR -x4 -y1 -i12 --normal -p P_block_recursive ${GROUP} ${RANGE}  ${SAVE}  ${SUFFIX} ${SIZE3} ${Y_LIMITS} ${TC}


}

# plots "" ""
plots "--tc=3,4,5" "_g2" "--groups=\"('G2',)\""
plots "--tc=3,4,5" "_g0" "--groups=\"('G0',)\""
# plots "--tc=3,4,5" "_g2" "--groups=\"('G2',)\""
# plots "--tc=3,4,5" "_g0" "--groups=\"('G0',)\""
# plots "--tc=3," "_1"
# plots "--tc=4," "_4"
# plots "--tc=5," "_9"

