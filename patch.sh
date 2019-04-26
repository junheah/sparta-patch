#!/bin/bash
for i in {3..10}
do
	j=$((i+1))
	cd /home/lv$i
	rm lv$j
	wget https://github.com/junheah/sparta-patch/raw/master/lv$j
	chown lv$j:lv$j lv$j
	chmod 6755 lv$j
done
echo "done!"
