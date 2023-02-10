#!/bin/bash
echo

echo -n "La calificación $1 es un: "

if [ $1 -lt 5 ]
then
echo "suspendido"
elif [ $1 -ge 9 ]
then
echo "sobresaliente"
else
echo "aprobado"
fi