#!/system/bin/sh

dir=$(find /dev/block/ -name by-name | head -n 1)
blocks="misc rrecord"

for block in $(echo $blocks | tr " " "\n")
    do path=$dir/$block
    
    if [ ! -e $path ]
        then continue
    fi    
    size=$(blockdev --getsz $path)
    dd if=/dev/zero of=$path count=$size >/dev/null 2>&1
    
    if [ "$?" != "0" ]
        then echo "ui_print Error" > /proc/self/fd/$2
    fi
done


