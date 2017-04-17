#!/bin/bash

src_org="./main"
target_file="../zinst"
endline=`wc -l $src_org| awk '{print $1}'`
count=1
	rm -f $target_file;touch $target_file
	while [[ $count -le $endline ]];do	
		if [[ `(echo $(head  -$count $src_org  | tail -n 1 |egrep 'source \.\/src'))` != "" ]];then
			Exec=`echo $(head  -$count $src_org  | tail -n 1 | sed -e 's/source /cat /g')`
			$Exec |sed '/^\#\!\/bin\/bash/d'  >> $target_file
		else
			head  -$count $src_org  | tail -n 1 >> $target_file
		fi
	
	let count=$count+1
	done

chmod 755 $target_file
