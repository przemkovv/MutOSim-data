
set -x
C=3

A_start=0.5
A_stop=2.0
A_step=0.1
Duration=800000
Suffix=
Path=data/scenarios/threshold_mechanisms2/
OutputDir=data/results/threshold_mechanisms3/

CompressionPath=${Path}compression/
# CompressionMods=(t9_3 t9_6 t9_6_3 t9_int33 t9_int66 t9_int66_int33)
CompressionMods=(t9_6_3 t9_int66_int33)
# CompressionMods=(t9_int33 t9_int66 t9_int66_int33)
OverloadPath=${Path}overload/
OverloadMods=(im_1.5 im_1.2)

ext=.json

time build/bin/mutosim -I ${Path}3_1g/ -o 3_1g${Suffix}.json -c $C --start=$A_start --stop=$A_stop -t $Duration -d ${OutputDir}
time build/bin/mutosim -I ${Path}3g/ -o 3g${Suffix}.json -c $C --start=$A_start --stop=$A_stop -t $Duration -d ${OutputDir}

for compressionMod in ${CompressionMods[@]}; do
  Suffix=_${compressionMod}
  compressionModPath=${CompressionPath}${compressionMod}${ext}
  echo $compressionModPath
  time build/bin/mutosim -I ${Path}3_1g/ -a ${compressionModPath} -o 3_1g${Suffix}.json -c $C --start=$A_start --stop=$A_stop -t $Duration -d ${OutputDir}
  time build/bin/mutosim -I ${Path}3g/ -a ${compressionModPath} -o 3g${Suffix}.json -c $C --start=$A_start --stop=$A_stop -t $Duration -d ${OutputDir}
done

for overloadMod in ${OverloadMods[@]}; do
  Suffix=_${overloadMod}
  overloadModPath=${OverloadPath}${overloadMod}${ext}
  echo $overloadModPath
  time build/bin/mutosim -I ${Path}3_1g/ -a ${overloadModPath} -o 3_1g${Suffix}.json -c $C --start=$A_start --stop=$A_stop -t $Duration -d ${OutputDir}
  time build/bin/mutosim -I ${Path}3g/ -a ${overloadModPath} -o 3g${Suffix}.json -c $C --start=$A_start --stop=$A_stop -t $Duration -d ${OutputDir}
done


for compressionMod in ${CompressionMods[@]}; do
  compressionModPath=${CompressionPath}${compressionMod}${ext}
  for overloadMod in ${OverloadMods[@]}; do
    Suffix=_${compressionMod}_${overloadMod}
    overloadModPath=${OverloadPath}${overloadMod}${ext}
    echo $overloadModPath
    time build/bin/mutosim -I ${Path}3_1g/ -a ${compressionModPath} -a ${overloadModPath} -o 3_1g${Suffix}.json -c $C --start=$A_start --stop=$A_stop -t $Duration -d ${OutputDir}
    time build/bin/mutosim -I ${Path}3g/ -a ${compressionModPath}  -a ${overloadModPath} -o 3g${Suffix}.json -c $C --start=$A_start --stop=$A_stop -t $Duration -d ${OutputDir}
  done
done
