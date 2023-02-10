#!/bin/bash
echo
read -p "Introduce un número de llamadas: " llamadas
let tarifaRecomendada

let tarifaUno=100

let tarifaDos=$((50+llamadas))

let tarifaTres=$((20+llamadas*2))

tarifaRecomendada=$tarifaUno
cual=1
if [ $tarifaUno -gt $tarifaDos ]
then
tarifaRecomendada=$tarifaDos
cual=2
if [ $tarifaDos -gt $tarifaTres ]
then
tarifaRecomendada=$tarifaTres
cual=3
fi
fi

echo "La tarifa recomendada para $llamadas llamadas es la tarifa $cual, que son: $tarifaRecomendada euros"