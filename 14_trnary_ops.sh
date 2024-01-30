#!/bin/bash

read -p "Enter age " age

# Without using if statement
[[ $age -ge 18 ]] && echo "Goodgood" || echo "Wrong Wrong"

