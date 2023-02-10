#!/bin/bash
numMatriculas=`cat notas.txt | tail -n+2 | wc -l`

aprobados=0
suspensos=0

for i in `seq 1 $numMatriculas`; do
i=$((i+1))
nota=`cat notas.txt | awk '{print $3}' | head -$i | tail -1`
if [ $nota -ge 5 ]
then
aprobados=$((aprobados+1))
else
suspensos=$((suspensos+1))
fi
done

echo
echo "El número de aprobados es: $aprobados"
echo "El número de suspensos es: $suspensos"