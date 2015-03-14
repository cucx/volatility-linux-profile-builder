#!/bin/bash

find / \( -perm -400 -o -perm -200 \) \ -type -f  -ls > setidfiles
cat setidfiles
