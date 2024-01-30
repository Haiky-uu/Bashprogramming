#!/bin/bash -x

cars=( 'honda' 'audi' 'bmw' 'tesla' 'kawasaki'  )

echo "${cars[@]}"
echo "${cars[2]}"

unset cars[3]

echo "${cars[3]}"
echo "${cars[@]}"

cars[3]='teslacar'

echo "${cars[3]}"
echo "${cars[@]}"
