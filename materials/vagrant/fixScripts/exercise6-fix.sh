#!/bin/bash
#add fix to exercise6-fix here
#!/bin/bash
cd ~
mkdir f1
mkdir f2
cd ~f1
sudo echo abcdefghijklmnop >  file1
sudo echo bla bla bla > file2
sudo chmod +x file1
sudo chmod +x file2
cd /home/vagrant
#                                                                          
####################BOF copy_files.sh
# Check if at least 3 arguments are provided
if [ "$#" -lt 3 ]; then
    echo "Usage: $0 file1 file2 ... destination_folder"
    exit 1
fi

# Get the last argument (destination folder)
destination="${@: -1}"

# Loop through all arguments except the last one
for ((i = 1; i <= $# - 1; i++)); do
    source="${!i}"
    
    # Copy the source file to the destination folder
    scp "$source" "$destination"
done

# Calculate and print the total number of bytes copied
total_bytes_copied=$(du -bc $destination* | tail -n 1 | awk '{print $1}')
echo "$total_bytes_copied"
#########################EOF copy_files.sh


sudo chmod +x copy_files.sh

sudo /home/vagrant/copy_files.sh file1 file2 /home/vagrant/f2/