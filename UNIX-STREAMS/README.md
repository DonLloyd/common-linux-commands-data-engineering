## Standard Out

* Filtering Examples -- We can use > to put output into a file

echo -e "Apple\nCarrot\nBanana" | sort
echo -e "Apple\nCarrot\nBanana" | sort > fruit.txt
echo -e "Apple\nCarrot\nBanana\nApple" | sort | uniq -c >> fruit.txt # Append rather than overwrite

* Grep

echo -e "Apple\nCarrot\nBanana\nApple" | sort | uniq -c | grep Apple

ps -ef | grep python # ps shows the process on the machine, so we can grep to limit to python-related

* Rev -- Reverse the order of a stream

echo 1993
echo 1993 | rev

## Standard Input

* Ask for User input

read -p 'File: ' FILENAME # See example script file input.sh in this directory

* Put it into a script

less < fruit.txt

## Using Standard Error

* Create Error
ls -l /var/FAKEDIR 

* Write Error to File
ls -l /var/FAKEDIR 2>error.txt
*Append Errors to file
ls -l /var/FAKEDIR 2>>error.txt

* Throw Error Away
ls -l /var/FAKEDIR 2>/dev/null