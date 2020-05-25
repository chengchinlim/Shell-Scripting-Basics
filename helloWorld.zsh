#!/bin/sh
content="Shell scripting is fun!"
host=${HOSTNAME}
printf "Hello World!\n${content}\nThis script is running on ${host}\n"
if [ ! -f /etc/shadow ]
then
  printf "File not exist\n"
else
  printf "Shadow passwords are enabled\n";
fi
if [ -w /etc/shadow ] 
then
  printf "I have permission to edit\n!"
else
  printf "I do NOT have permission to edit\n"
fi
for text in $@
do
  printf "$text\n"
done
