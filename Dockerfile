FROM splunk/splunk

EXPOSE 8000

COPY starterData.sh /

ENTRYPOINT [/starterData.sh &]
