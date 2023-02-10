#!/bin/bash
echo
read -p "Introduce una nota: " nota

echo -n "La calificación $nota es un: "

if [ $nota -lt 5 ]
then
echo "suspendido"
elif [ $nota -ge 9 ]
then
echo "sobresaliente"
else
echo "aprobado"
fi