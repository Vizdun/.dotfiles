groff -Kutf8 -Tdvi -mec -ms $1.ms > $1.dvi
dvipdfm -cz 9 $1.dvi
rm $1.dvi
