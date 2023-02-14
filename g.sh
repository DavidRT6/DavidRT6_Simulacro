#!/bin/bash
numNotas=`cat notas.txt | tail -n+2 | wc -l`
suma=0

for i in `seq 1 $numNotas`; do
i=$((i+1))
nota=`cat notas.txt | awk '{print $3}' | head -$i | tail -1`
suma=$((suma+nota))
done

i=$((i-1))
media=$((suma/i))
echo
echo "La media de las notas es: $media"