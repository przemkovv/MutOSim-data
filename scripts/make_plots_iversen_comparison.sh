#!/bin/zsh

# tools/plot.py data/results/test.json -x2 -y2 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.6 --x_min=0.4 --pairs="(0,1),(2,3),(4,5),(6,7)," --y_min=98 --y_max=102 -n _2percent_range_similarity -q -s
# tools/plot.py data/results/test.json -x2 -y3 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.6 --x_min=0.4 --pairs="(0,2),(2,4),(4,6),(1,3),(3,5),(5,7)" --y_min=98 --y_max=102 -n _2percent_range_convergence -q -s
# tools/plot.py data/results/test.json -x2 -y2 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.6 --x_min=0.4 --pairs="(0,1),(2,3),(4,5),(6,7)" --y_min=50 --y_max=150  -n_50percent_range_similarity -q -s
# tools/plot.py data/results/test.json -x2 -y3 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.6 --x_min=0.4 --pairs="(0,2),(2,4),(4,6),(1,3),(3,5),(5,7)" --y_min=50 --y_max=150  -n_50percent_range_convergence -q -s

tools/plot.py data/results/var_ratio.json -x2 -y2 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.6 --x_min=0.4 --pairs="(0,1),(2,3),(4,5),(6,7)," --y_min=98 --y_max=102 -n _2percent_range_similarity -q -s
tools/plot.py data/results/var_ratio.json -x2 -y3 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.6 --x_min=0.4 --pairs="(0,2),(2,4),(4,6),(1,3),(3,5),(5,7)" --y_min=98 --y_max=102 -n _2percent_range_convergence -q -s
tools/plot.py data/results/var_ratio.json -x2 -y2 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.6 --x_min=0.4 --pairs="(0,1),(2,3),(4,5),(6,7)" --y_min=50 --y_max=150  -n_50percent_range_similarity -q -s
tools/plot.py data/results/var_ratio.json -x2 -y3 --relatives --linear -p P_block --groups="('G0',)" --x_max=1.6 --x_min=0.4 --pairs="(0,2),(2,4),(4,6),(1,3),(3,5),(5,7)" --y_min=50 --y_max=150  -n_50percent_range_convergence -q -s
