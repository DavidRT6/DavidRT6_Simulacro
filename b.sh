#!/bin/bash
numMatriculas=`cat notas.txt | tail -n+2 | wc -l`
echo
echo "El número de matrículas es: $numMatriculas"