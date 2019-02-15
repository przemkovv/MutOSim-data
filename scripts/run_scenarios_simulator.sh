
set -x
C=5

A_start=0.3
A_stop=2.0
A_step=0.1
Duration=1000000
Suffix=results2
Path=data/scenarios/simulator_publication/
OutputDir=data/results/simulator2/

ext=.json

time ../mutosim_build/bin/mutosim -I ${Path} -o ${Suffix}.json -c $C --start=$A_start --stop=$A_stop -t $Duration -d ${OutputDir}
