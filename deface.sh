#! /bin/bash

scriptdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/"


if [ $# -lt 2 ]; then

	echo "usage: $( basename ${0} ) <input.ext> <output.ext>"
	exit 1;		    

fi 

input=$1
output=$2

${scriptdir}/mri_deface ${input} ${scriptdir}/talairach_mixed_with_skull.gca ${scriptdir}/face.gca $output
