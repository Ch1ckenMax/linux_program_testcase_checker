#ATTENTION:
#First argument: program name without extension ".exe"
#Second argument: Number of input output pairs in the format of (input/output)(First argument)_(num).txt in which num is from 1 to second argoument inclusively
#For example: first parameter=dog.exe , input file 1 must be named "inputdog_1.txt", output file 1 must be named "outputdog_1.txt"
#Third argument: The name of folder that includes the test cases and output
#The program must have postfix of .exe and must be put under the current path, and the test cases and output must be put under the path in third argument
#The output will be echo'd in console
for((i=1;i<=$2;i++))
do
  if [ -e $3/input$1_$i.txt ]
  then
    ./$1.exe <$3/input$1_$i.txt 1>output.txt 2>>testError.txt
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
