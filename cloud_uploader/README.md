First we started with our hashbang.

Second I put up an if statement suggestion if the file that is to be uploaded ($1) if it is empty to echo a message and tell
the user to upload the file.

Third i gave the first pushed argument the $1 a variable of FILE. 

using aws s3 cp command i pushed the $FILE variable to the desired bucket of our choice. 


In the end i used if [ $? -eq 0 ]; then echo "Success" Else echo "failed" so if the file/argument passed to the script was uploaded
succesfully to the aws s3 bucket it would show successs or else it would show failed. 
