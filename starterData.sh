#!/bin/sh

echo ">>>>  Importing Test Data"
# use while loop to wait for Splunk to start, then import data
while true
do
    netstat -uplnt | grep :8000 | grep LISTEN > /dev/null
    verifier=$?
    if [ 0 = $verifier ]
        then
            echo "uploading test data"
		curl http://docs.splunk.com/images/Tutorial/tutorialdata.zip --out /tmp/tutorialData1.zip && \
		curl https://docs.splunk.com/images/d/db/Prices.csv.zip --out /tmp/tutorialData2.zip && \
		cd $SPLUNK_HOME/bin/ && \
		sudo ./splunk add oneshot /tmp/tutorialData1.zip && \
		sudo ./splunk add oneshot /tmp/tutorialData2.zip && \
            break
        else
            echo "Splunk not available yet"
            sleep 5
    fi
done
