#!/bin/bash

netstat -anp > netstat_clean
ps -ef > ps_clean
ps aux > psaux_clean
pstree -ah > pstree_clean
awk -F: '($3 == 0) {print $1}' /etc/passwd >other0users_clean
awk -F: '($2 == "") {print $1}' /etc/shadow >nopassusers_clean
find / \( -perm -4000 -o -perm -2000 \) -type f -ls >setidfiles_clean
