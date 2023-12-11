#!/bin/bash

env=""
out=""
loc=""
num=-1

while getopts "e:l:p:o:" flag;
do
	case "$flag" in

		e)
			env=$OPTARG
			;;

		l)
			loc=$OPTARG
			;;
		p)
			num=$OPTARG
			;;
		o)
			out=$OPTARG
			;;
		*)
			;;
	esac

done
list=$(getfastq.sh -p "$num" -l "$loc" -v)
list=$(echo "$list"|sed 's/\(^.*_\)\(.*$\)/\1/g'|sed -n '1~2!p')

mkdir "$out"
touch "${out}/log.txt"
echo "$list"|awk -v out_v=$out -v env_v=$env -v loc_v=$loc '{out_l=out_v"_"$1; out_r=out_v; start=systime(); system("bash -i ~/bin/assembly_core.sh -e "env_v" -1 "loc_v"/"$1"1.fq.gz -2 "loc_v"/"$1"2.fq.gz -o "out_l); system("mv "out_l" "out_r); end=systime(); elapsed=end-start; print "Time elapsed "elapsed" seconds"; system("echo For pair "$1" >> "out_v"/log.txt"); system("echo Trim Info for pair "$1" $(cat "out_v"/"out_l"/"out_l"_trim/trim_log.txt) >> "out_v"/log.txt"); system("echo Assembly Info for pair "$1" $(cat "out_v"/"out_l"/"out_l"_quast_out/asm_log.txt) >> "out_v"/log.txt"); system("echo Time elapsed for pair "$1": "elapsed" seconds >> "out_v"/log.txt");system("echo >> "out_v"/log.txt");}'