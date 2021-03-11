# Linux Program Test Case Checker

This is a simple shell script written for automating the process of comparing a program's outputs with sample outputs. The script can be used to check the correctness of a program by checking if the outputs match the expected outputs.

I wrote this for checking my programming assignments. I am not a professional so I cannot guarantee the script's correctness. Use it at your own discretion.

# Description & How to use
1. I hard coded some of the file names and directories in the script. Configure the directories and rename your testcases and programs under the following rule so that they work with my script:
    - The program must have .exe as suffix (I know linux doesn't use exe as the extension for executable programs. I just do it for convenience's sake.)
    - The sample test cases must be put in a folder, in which the folder must be put in the same directory as the program
    - The sample test cases must be named in the following rule : (input/output)(program name without .exe suffix)_\(integer).txt, in which the integer should start from 1
      - For example, you have a program foobar.exe and two pair of testcases.
      - You should create a folder under the same path as foobar.exe
      - inside the folder
        - the first input pair should be named as ```inputfoobar_1.txt``` ```outputfoobar_1.txt```
        - the second input pair should be named as ```inputfoobar_2.txt``` ```outputfoobar_2.txt```
2. Download the script, put the script under the same path as the program
3. Run the script with 3 parameters:
    - The first parameter: the program name without .exe suffix
    - The second parameter: number of test cases
    - The third parameter: the folder name
    - As an example, to run the script for the foobar.exe program above, if the test case folder is named as "testcases", the command would be ```./test.sh foobar 2 testcases```
4. The result will be echo'd on console. If there are any errors when the script tries to run the test cases, the program will create a text file testError.txt and write the errors onto that file
