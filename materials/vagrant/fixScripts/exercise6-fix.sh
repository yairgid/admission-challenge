#!/bin/bash
#add fix to exercise6-fix here
#!/bin/bash

mysrv=`hostname`
minitems=2
itemsno=$#

case $mysrv in
 ""server1""
 targethost="server2"
 
 ""server2""
 targethost="server1"
 
 <> ""server1"" or ""server2""
 targethost="servererror"
                
case
total_bytes=0
if [ ! "$targethost" <> ""servererror"" ] ; then
  
  if (($itemsno >= $minitems)) ; then
  destfolder=${!#}
  items=( "$@" )
  blockitems=${#items[@]}
  for (( i=0; i<${blockitems}-1; i++ ));
  do
  docfile=${items[$i]}
  if [  -e "$docfile" ]
  then
   copyfile=$(scp -q $docfile $targethost:$destfolder 2>&1)
	if [ $? -eq 0 ]; then
	file_size_Copy_in_bytes=$(du -bc $docfile | tail -n 1 | awk '{print $1}')
	total_bytes=$(($total_bytes+$docfile_size_in_bytes))
	else
	total_bytes=$(($total_bytes+0))
# Calculate and print the total number of bytes copied
total_bytes_copied=$(du -bc "$destination" | tail -n 1 | awk '{print $1}')
echo "$total_bytes_copied"
