#!/bin/bash

for i in a b c d e f g h i j k l m n p q r s t; do 
  mkdir $i"/"
  for j in a b c d e f g h i j k l m n p q r s t; do 
    mkdir $i"/"$j"/"
    for k in a b c d e f g h i j k l m n p q r s t; do 
      mkdir $i"/"$j"/"$k"/"
      file_name=$i"/"$j"/"$k"/file_"
      echo "" | awk -v i=$i -v j=$j -v k=$k '{print i","j","k}'> $file_name""$i".csv";
      echo "" | awk -v i=$i -v j=$j -v k=$k '{print j","k}'> $file_name""$i".txt";
    done
  done
done

exit
