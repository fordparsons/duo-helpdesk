#! /bin/bash
# change en0 to your ethernet address to report IP address
ifconfig en0
# Change directory to wherever you permanently park your Flaskr folder
cd ~/Desktop/Flaskr
python flaskr.py

# run chmod u+x flaskr.command to make executable