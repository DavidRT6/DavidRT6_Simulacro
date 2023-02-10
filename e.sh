#!/bin/bash
echo

echo -n "La calificación de $1 es un: "

if [ $2 -lt 5 ]
then
echo "suspendido"
elif [ $2 -ge 9 ]
then
echo "sobresaliente"
else
echo "aprobado"
fi