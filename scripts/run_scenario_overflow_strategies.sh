
C=40

A_start=0.5
A_stop=0.8
Duration=4000000
Suffix=_start

set -o xtrace
time build/bin/sim -I data/3_1groups_149/ -o 3_1groups_149${Suffix}.json -c $C --start=$A_start --stop=$A_stop -t $Duration
time build/bin/sim -I data/3_1groups_149_im_1.5/ -o 3_1groups_149_im_1.5${Suffix}.json -c $C --start=$A_start --stop=$A_stop -t $Duration

time build/bin/sim -I data/3groups_149/ -o 3groups_149${Suffix}.json -c $C --start=$A_start --stop=$A_stop -t $Duration
time build/bin/sim -I data/3groups_149_im_1.5/ -o 3groups_149_im_1.5${Suffix}.json -c $C --start=$A_start --stop=$A_stop -t $Duration
set +o xtrace

A_start=0.8
A_stop=3.0
Duration=100000
Suffix=_end

set -o xtrace
time build/bin/sim -I data/3_1groups_149/ -o 3_1groups_149${Suffix}.json -c $C --start=$A_start --stop=$A_stop -t $Duration
time build/bin/sim -I data/3_1groups_149_im_1.5/ -o 3_1groups_149_im_1.5${Suffix}.json -c $C --start=$A_start --stop=$A_stop -t $Duration

A_stop=2.0

time build/bin/sim -I data/3groups_149/ -o 3groups_149${Suffix}.json -c $C --start=$A_start --stop=$A_stop -t $Duration
time build/bin/sim -I data/3groups_149_im_1.5/ -o 3groups_149_im_1.5${Suffix}.json -c $C --start=$A_start --stop=$A_stop -t $Duration
set +o xtrace

tools/merge_json.py data/results/3_1groups_149_start.json data/results/3_1groups_149_end.json data/results/3_1groups_149.json
tools/merge_json.py data/results/3_1groups_149_im_1.5_start.json data/results/3_1groups_149_im_1.5_end.json data/results/3_1groups_149_im_1.5.json

tools/merge_json.py data/results/3groups_149_start.json data/results/3groups_149_end.json data/results/3groups_149.json
tools/merge_json.py data/results/3groups_149_im_1.5_start.json data/results/3groups_149_im_1.5_end.json data/results/3groups_149_im_1.5.json
