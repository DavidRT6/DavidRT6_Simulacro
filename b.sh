#!/bin/bash
maxLineas=`cat notas.txt | tail -n+2 | wc -l`
let numMatriculas=0

for i in `seq 1 $maxLineas`; do
numMatriculas=$((numMatriculas+1))
done

echo
echo "El número de matrículas es: $numMatriculas"