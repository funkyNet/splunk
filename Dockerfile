FROM splunk/splunk

RUN curl http://docs.splunk.com/images/Tutorial/tutorialdata.zip --out /tmp/tutorialData1.zip && \
curl https://docs.splunk.com/images/d/db/Prices.csv.zip --out /tmp/tutorialData2.zip && \
cd $SPLUNK_HOME/bin/ && \ 
sudo ./splunk add oneshot /tmp/tutorialData1.zip && \ 
sudo ./splunk add oneshot /tmp/tutorialData2.zip && \ 


EXPOSE 8000
