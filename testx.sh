#!/bin/bash
echo "Please input a number list!"
read -a arr
for((i=0;i<${#arr[@]};++i))
do
    for((j=0;j<${#arr[@]}-1;++j))
    do
        if [[ ${arr[j]} -gt ${arr[j+1]} ]]
        then
            tmp=${arr[j]}
            arr[j]=${arr[j+1]}
            arr[j+1]=$tmp
        fi
    done
done
echo "after sorting!"
echo ${arr[@]}
