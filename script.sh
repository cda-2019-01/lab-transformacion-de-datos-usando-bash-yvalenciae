#! /bin/bash
for namear in *.csv;do sed '/^.$/d' $namear > ${namear}.1;done
for namear in *.csv.1; do sed = $namear | sed 'N;s/\n/\t/' > ${namear}.2; done
for nombrear in *.csv.1.2 ; do     sed "s/^/"${nombrear}\,"/" $nombrear > ${nombrear}.3; done
for name in *.csv.1.2.3 ;do sed  -e 's/[\t]/,/g' -e 's/\([a-zA-Z]*\)   \([a-zA-Z]*\)/\1,\2/'  $name > ${name}.4; done
for name in *.csv.1.2.3.4 ;do sed  -e "s/.csv.1.2/.csv/g"   $name > ${name}.5; done
for filename in *.csv.1.2.3.4.5; do tail $filename >> out.1; done
awk -F',' '{ for (i=4; i<=NF;i++) print $1,$2,$3,$i}' OFS=',' out.1 > solucion.txt
rm *.csv.*
rm out.*
cat solucion.txt

