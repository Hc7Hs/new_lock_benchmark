#!/bin/bash

for i in $(seq 1200000 100000 2800000 )
do
	sudo ../micro-benchmark/tools/powerManagement.sh  -f $i
	sleep 8
	./test_rw.sh
done
