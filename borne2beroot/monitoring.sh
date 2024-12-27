#!/bin/bash

# Architecture of the OS
arch=$(uname -a | sed 's/ PREEMPT_DYNAMIC//')

# Physical CPU
pcpu=$(grep "physical id" /proc/cpuinfo | uniq | wc -l)

# VCPU
vcpu=$(grep "processor" /proc/cpuinfo | wc -l)

# RAM
tot_ram=$(free -m | awk '$1 == "Mem:" {print $2}')
u_ram=$(free -m | awk '$1 == "Mem:" {print $3}')
per_ram=$(free -m | awk '$1 == "Mem:" {printf "%.2f", $3/$2*100}')

# Disk
tot_disk=$(df --total -m | grep total | awk '{printf "%.2f", $2/1024}')
u_disk=$(df --total -m | grep total | awk '{print $3}')
per_disk=$(df --total -m | grep total | awk '{print $5}')

# CPU Load
cpul=$(mpstat 1 1 | tail -n 1 | awk '{printf "%.1f", 100-$12}')

# Last Boot
lboot=$(who -b | awk '{print $3 " " $4}')

# LVM Use
lvmu=$(lsblk | awk '{print $6}' | if grep -q lvm; then echo "yes"; else echo "no";fi)

# Connection numbers
conn_num=$(ss -t | grep -i "estab" | wc -l)

# Users number
users_num=$(users | wc -w)

# Network
ip_add=$(hostname -I | awk '{print $1}')
MAC_add=$(ip link show | grep "ether" | awk '{print $2}')

# Sudo CMDS
cmds=$(journalctl _COMM=sudo | grep COMMAND | wc -l)

wall "    #Architecture : $arch
    #CPU physical: $pcpu
    #vCPU : $vcpu
    #Memory Usage: $u_ram/${tot_ram}MB ($per_ram)%
    #Disk Usage: $u_disk/${tot_disk}Gb ($per_disk)
    #CPU load: $cpul%
    #Last boot: $lboot
    #LVM use: $lvmu
    #Connections TCP : $conn_num ESTABLISHED
    #User log: $users_num
    #Network: IP $ip_add ($MAC_add)
    #Sudo : $cmds cmd"