#!/bin/bash
numMatriculas=`cat notas.txt | tail -n+2 | wc -l`

for i in `seq 1 $numMatriculas`; do
i=$((i+1))
nombre=`cat notas.txt | awk '{print $1}' | head -$i | tail -1`
modulo=`cat notas.txt | awk '{print $2}' | head -$i | tail -1`
nota=`cat notas.txt | awk '{print $3}' | head -$i | tail -1`
if [ $nombre = $1 ] && [ $modulo = $2 ]
then
echo "El alumno $1 del módulo $2 tiene un: $nota"
fi
done
