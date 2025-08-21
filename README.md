# common-linux-commands-data-engineering
A few examples of common Linux Commands for Data Engineering from Duke Data Engineering course on Coursera.

# Useful Commands
## Time and Date
* cal
* date

##Disk usage or file size:
* df -h # the -h flag makes this human readable
* du -sh /usr/bin/* # will list out files and sizes in selected dir

##System Performance

* top # shows what's happening with your system

#Using the Shell

##Exploring the Shell

* pwd # shows the full working path (print working directory)
* ls -lah # Shows a long listing about permissions, group, permissions
* cd /tmp cd ~ # move between directories
* cd .. #moves you to the parent directory
* which python3 # displays the location in which you can find that executable

##Viewing Files

* less /etc/passwd # Lists all the users and passwords, paginated. Use up/down arrows
* cat /etc/passwd #Cat just prints everything out.

##Counting Lines

* wc -l /etc/passwd

##Modifying Files and Directories

* touch newfile.txt # creates a new file
* mkdir newdir # make a new directory
* mv newfile.txt newdir/ #Move our new file into our new directory
* mv newfile.txt mynewname.txt # MV command can also be used to rename files
* mkdir -p moredir/dir1/dir2 # make nested directories
* rm -rf moredir # Removes a directory or directory tree
* chmod +x # Makes a file executable

##Processes

* ps
* ./sleeper.sh & # Runs the script in the background; you can't kill it from here, you need to return to the forground with fg [job#]
* fg 1

# https://hub.docker.com/_/python