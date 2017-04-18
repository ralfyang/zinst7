#!/bin/bash
BARR="==================================================================================================="
Barr="---------------------------------------------------------------------------------------------------"
pstr="[==========================================]"

src_org="./main"
target_file="../zinst"

## All source scan
all_src=(`egrep 'source \.\/src' ./main | awk '{print $2}'`)

## Define Last line number
endline=`wc -l $src_org| awk '{print $1}'`
	## Purge the old artifact
	rm -f $target_file;touch $target_file

	## Start loop
	echo "$BARR"
	echo " Building..."
	echo "$Barr"
	count=1
	Cnt=1
	while [[ $count -le $endline ]];do	
		if [[ `(echo $(awk "NR == $count" $src_org |egrep 'source \.\/src'))` != "" ]];then
			Exec=`echo $(awk "NR == $count" $src_org | sed -e 's/source /cat /g')`
			$Exec |sed '/^\#\!\/bin\/bash/d'  >> $target_file
			## Part of Progress bar
			pd=$(( $Cnt * 45 / ${#all_src[@]} ))
				if [[ $Cnt = ${#all_src[@]} ]];then
					Pkg_picklist=" - Build has been completed -"
				else
					Pkg_picklist="${all_src[$Cnt]}"
				fi
			printf "\r%-2s %-40s %3s %3d.%1d%% %.${pd}s" '|' "$Pkg_picklist" '|' $(( $Cnt * 100 / ${#all_src[@]} )) $(( ($Cnt * 1000 / ${#all_src[@]}) % 10 )) $pstr
			let Cnt=$Cnt+1
		else
			awk "NR == $count" $src_org >> $target_file
		fi
	
	let count=$count+1
	done
## Line braker for Progress bar
echo ""
echo "$BARR"

## Permission change
chmod 755 $target_file


