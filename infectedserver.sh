#!/bin/bash

netstat -anp > netstat_infected
ps -ef > ps_infected
ps aux > psaux_infected
pstree -ah > pstree_infected
awk -F: '($3 == 0) {print $1}' /etc/passwd >other0users_ingected
awk -F: '($2 == "") {print $1}' /etc/shadow >nopassusers_infected
find / \( -perm -4000 -o -perm -2000 \) -type f -ls >setidfiles_infected
