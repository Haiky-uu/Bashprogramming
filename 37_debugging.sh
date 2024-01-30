#!/bin/bash

set -x #Used to debug the script
set -e #used when script fails or throws an error in our case cd /root will not work if user is not root or sudo is not used

pwd
date
cd /root
hostname
