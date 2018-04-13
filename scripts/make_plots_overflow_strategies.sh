
set -x
DATA_PATH=data/results/boromir2
OUTPUT='-d data/results/plots/boromir2'
OUTPUT_PUB='-d data/results/plots/boromir2/pub2'

X_LIMITS='--x_min=0.5 --x_max=1.6'
ARGS="${OUTPUT} ${X_LIMITS} -s -q"
ARGS_PUB="${OUTPUT_PUB} ${X_LIMITS} -s "

PUB_SIZE="--width=5 --height=2.5"
PUB_2SIZE="--width=5 --height=2.5"
PUB_4SIZE="--width=5 --height=5"
PUB_3SIZE="--width=5 --height=6"
PUB_5SIZE="--width=5 --height=2.5"

TC=--tc="(3,4,5)"

# tools/plot.py ${DATA_PATH}/3groups_149.json ${ARGS_PUB} ${TC} ${PUB_2SIZE} -x 1 -y 1 --normal -p P_block -i 2  -n "_no_mut" --bp --groups="( 'G2')" --title-suffix="- No mutual overflows"
# tools/plot.py ${DATA_PATH}/3groups_149.json ${ARGS_PUB} ${TC} ${PUB_2SIZE} -x 1 -y 1 --normal -p P_block -i 6  -n "_3ov_rand" --bp --groups="( 'G2')" --title-suffix=""

# tools/plot.py ${DATA_PATH}/3groups_149.json ${ARGS_PUB} ${PUB_5SIZE} -x 1 -y 1 --linear -p served_u --y_min=95 --y_max=115  --relative-divs -i 0,4,2 --pairs="(0,2,'1 mutually overflowing'),(1,2,'3 mutually overflowing')" --name="_all"
 
# tools/plot.py ${DATA_PATH}/3groups_149.json ${ARGS_PUB} ${TC} ${PUB_2SIZE} -x 1 -y 1 --linear -p P_block --y_min=0 --y_max=130  --relatives -i 0,1,3,2 --pairs="(2,3, 'Random policy vs no mutual overflows')," --name="_1ov_vs_noov"  --groups="( 'G2')"
# tools/plot.py ${DATA_PATH}/3groups_149.json ${ARGS_PUB} ${TC} ${PUB_4SIZE} -x 2 -y 1 --linear -p P_block --y_min=80 --y_max=120  --relatives -i 0,1,3 --pairs="(0,2,'Highest free policy vs random'),(1,2, 'Lowest free policy vs random')" --name="_1ov_vs_rand"  --groups="( 'G2')"
# tools/plot.py ${DATA_PATH}/3groups_149.json ${ARGS_PUB} ${TC}  ${PUB_3SIZE} -x 3 -y 1 --linear -p P_block --y_min=0 --y_max=130  --relatives -i 0,1,3,2 --pairs="(0,3,'Highest free policy'),(1,3, 'Lowest free policy'),(2,3, 'Random policy')" --name="_all_1ov_vs_noov"  --groups="( 'G2')"
# tools/plot.py ${DATA_PATH}/3groups_149.json ${ARGS_PUB} ${TC}  ${PUB_4SIZE} -x 2 -y 1 --linear -p P_block --y_min=80 --y_max=130  --relatives -i 4,5,6 --pairs="(0,2, 'Highest free policy vs random'),(1,2, 'Lowest free policy vs random')" --name="_3ov_vs_rand"  --groups="( 'G2')"
# tools/plot.py ${DATA_PATH}/3groups_149.json ${ARGS_PUB} ${TC}  ${PUB_2SIZE} -x 1 -y 1 --linear -p P_block --y_min=0 --y_max=120  --relatives -i 6,2 --pairs="(0,1, 'Random policy vs no mutual overflows')," --name="_3ov_vs_noov"  --groups="('G0', 'G2')"

PUB_SIZE="--width=5 --height=2.5"
PUB_2SIZE="--width=5 --height=5"
PUB_4SIZE="--width=10 --height=6"
PUB_3SIZE="--width=10 --height=8"
TC=--tc="(3,4,5)"

# tools/plot.py ${DATA_PATH}/3_1groups_149.json ${ARGS_PUB} ${TC} ${PUB_2SIZE} -x 2 -y 1 --normal -p P_block -i 2  -n "_no_mut" --bp --groups="('G0', 'G2')" --title-suffix="- No mutual overflows"
# tools/plot.py ${DATA_PATH}/3_1groups_149.json ${ARGS_PUB} ${TC} ${PUB_2SIZE} -x 2 -y 1 --normal -p P_block -i 6  -n "_3ov_rand" --bp --groups="('G0', 'G2')" --title-suffix=""

# tools/plot.py ${DATA_PATH}/3_1groups_149.json ${ARGS_PUB} ${PUB_5SIZE} -x 1 -y 1 --linear -p served_u --y_min=95 --y_max=105  --relative-divs -i 0,4,2 --pairs="(0,2,'1 mutually overflowing'),(1,2,'3 mutually overflowing')" --name="_all" 

# tools/plot.py ${DATA_PATH}/3_1groups_149.json ${ARGS_PUB} ${TC} ${PUB_2SIZE} -x 2 -y 1 --linear -p P_block --y_min=0 --y_max=130  --relatives -i 0,1,3,2 --pairs="(2,3, 'Random policy vs no mutual overflows')," --name="_1ov_vs_noov"  --groups="('G0', 'G2')"

# tools/plot.py ${DATA_PATH}/3_1groups_149.json ${ARGS_PUB} ${TC} ${PUB_2SIZE} -x 2 -y 1 --linear -p P_block --y_min=90 --y_max=115  --relatives -i 0,1,3 --pairs="(0,2,'Highest free policy vs random'),(1,2, 'Lowest free policy vs random')" --name="_1ov_vs_rand_g0"  --groups="('G0')"
# tools/plot.py ${DATA_PATH}/3_1groups_149.json ${ARGS_PUB} ${TC} ${PUB_2SIZE} -x 2 -y 1 --linear -p P_block --y_min=90 --y_max=115  --relatives -i 0,1,3 --pairs="(0,2,'Highest free policy vs random'),(1,2, 'Lowest free policy vs random')" --name="_1ov_vs_rand_g2"  --groups="('G2')"
# tools/plot.py ${DATA_PATH}/3_1groups_149.json ${ARGS_PUB} ${TC} ${PUB_2SIZE} -x 3 -y 1 --linear -p P_block --y_min=0 --y_max=135  --relatives -i 0,1,3,2 --pairs="(0,3,'Highest free policy'),(1,3, 'Lowest free policy'),(2,3, 'Random policy')" --name="_all_1ov_vs_noov_g0"  --groups="('G0')"
# tools/plot.py ${DATA_PATH}/3_1groups_149.json ${ARGS_PUB} ${TC} ${PUB_2SIZE} -x 3 -y 1 --linear -p P_block --y_min=0 --y_max=135  --relatives -i 0,1,3,2 --pairs="(0,3,'Highest free policy'),(1,3, 'Lowest free policy'),(2,3, 'Random policy')" --name="_all_1ov_vs_noov_g2"  --groups="('G2')"
# tools/plot.py ${DATA_PATH}/3_1groups_149.json ${ARGS_PUB} ${TC} ${PUB_2SIZE} -x 2 -y 1 --linear -p P_block --y_min=85 --y_max=125  --relatives -i 4,5,6 --pairs="(0,2, 'Highest free policy vs random'),(1,2, 'Lowest free policy vs random')" --name="_3ov_vs_rand_g0"  --groups="('G0')"
# tools/plot.py ${DATA_PATH}/3_1groups_149.json ${ARGS_PUB} ${TC} ${PUB_2SIZE} -x 2 -y 1 --linear -p P_block --y_min=85 --y_max=125  --relatives -i 4,5,6 --pairs="(0,2, 'Highest free policy vs random'),(1,2, 'Lowest free policy vs random')" --name="_3ov_vs_rand_g2"  --groups="('G2')"
tools/plot.py ${DATA_PATH}/3_1groups_149.json ${ARGS_PUB} ${TC} ${PUB_2SIZE} -x 2 -y 1 -p P_block --y_min=0 --y_max=1e5  --relatives -i 6,2 --pairs="(0,1, 'Random policy vs no mutual overflows')," --name="_3ov_vs_noov"  --groups="('G0', 'G2')"

# tools/plot.py ${DATA_PATH}/3_1groups_149.json ${ARGS_PUB} -x 4 -y 4 --normal -p P_block -i 4,5,6,2  -n "_3o_vall" --bp 
# tools/plot.py ${DATA_PATH}/3_1groups_149.json ${ARGS_PUB} -x 4 -y 4 --normal -p P_block -i 0,1,3,2  -n "_1ov_all" --bp 
