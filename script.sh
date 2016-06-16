#!/bin/bash
echo $(basename $0) is running with pid $$
echo

echo
# Process ID of current process
# PID=$$
 
     echo /proc/pid/fd 
     echo Open files:
     for i in `ls /proc/$$/fd`
     do
        echo $(basename /proc/$$/fd/$i):  $(readlink /proc/$$/fd/$i)
        cat /proc/$$/fdinfo/$i
         
     done
     
echo
echo /proc/pid/status/
echo STATUS:
cat /proc/$$/status
echo

echo /proc/pid/stack
echo STACK:
cat /proc/$$/stack
echo

echo /proc/pid/maps
echo MAPS:
cat /proc/$$/maps
echo

echo /proc/pid/exe
echo EXE:
readlink /proc/$$/exe
echo

echo /proc/pid/environ/
echo ENVIRON:
cat /proc/$$/environ | tr '\0' '\n'
echo