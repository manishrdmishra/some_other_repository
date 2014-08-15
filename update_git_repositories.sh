#!/bin/bash
echo "Pulling repositories in /home/diego"
cd ~
find * -type d -a -name .git | while read f
do
    echo -- ${f%/.git}
    (cd ${f%/.git}; git pull)
done
cd -

#echo "Pulling repositories in Ultrabay"
#cd ~/Ultrabay
#find * -type d -a -name .git | while read f
#do
#    echo -- ${f%/.git}
#    (cd ${f%/.git}; git pull)
#done
#cd -
