#!/bin/bash
numMatriculas=`cat notas.txt | tail -n+2 | wc -l`
suspendido=0

for i in `seq 1 $numMatriculas`; do
i=$((i+1))
nombre=`cat notas.txt | awk '{print $1}' | head -$i | tail -1`
nota=`cat notas.txt | awk '{print $3}' | head -$i | tail -1`
if [ $nombre = $1 ]
then
if [ $nota -lt 5 ]
then
suspendido=$((suspendido+1))
fi
fi
done

echo
if [ $suspendido -eq 0 ]
then
echo "$1 tiene todo aprobado."
else
echo "$1 no tiene todo aprobado."
fi