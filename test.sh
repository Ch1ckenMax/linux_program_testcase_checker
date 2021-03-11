
for((i=1;i<=$2;i++))
do
  if [ -e $3/input$1_$i.txt ]
  then
    ./$1 <$3/input$1_$i.txt 1>output.txt 2>>testError.txt
    difference="`diff output.txt $3/output$1_$i.txt`"
    rm output.txt
    if [ ${#difference} -eq 0 ]
    then
      echo "input$1_$i.txt is fine"
    else
      echo "input$1_$i.txt is NOT fine"
      echo "$difference"
    fi
  else
    echo "input$1_$i.txt does not exist"
  fi
done
