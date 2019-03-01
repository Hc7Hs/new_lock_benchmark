#!/bin/bash
file_name="./rw_bk.sh"
out_file="../data/"$(date +%Y%m%d)"_bdw.csv"
exe_time=5
wt_num=0
for rt_num in 1 2 4 6 8 10 50 100 200 300 400 500 600 700 800 900 1000
do	
result=""
result=$result$($file_name -e $exe_time --rt $rt_num --rd 0 --wt $wt_num --wd 0 -f)
sleep 1
result=$result$($file_name -e $exe_time --rt $rt_num --rd 0 --wt $wt_num --wd 0)
sleep 1
result=$result$($file_name -e $exe_time --rt $rt_num --rd 0 --wt $wt_num --wd 0 -p)
sleep 1
result=$result$($file_name -e $exe_time --rt $rt_num --rd 0 --wt $wt_num --wd 0 -c)
sleep 1
result=$result$($file_name -e $exe_time --rt $rt_num --rd 0 --wt $wt_num --wd 0 -p -c)
sleep 1
result=$result$($file_name -e $exe_time --rt $rt_num --rd 0 --wt $wt_num --wd 0 -s)
sleep 1
result=$result$($file_name -e $exe_time --rt $rt_num --rd 0 --wt $wt_num --wd 0 -s -p)
sleep 1
result=$result$($file_name -e $exe_time --rt $rt_num --rd 0 --wt $wt_num --wd 0 -s -c)
sleep 1
result=$result$($file_name -e $exe_time --rt $rt_num --rd 0 --wt $wt_num --wd 0 -s -p -c)
sleep 1
echo $result>>$out_file

done

