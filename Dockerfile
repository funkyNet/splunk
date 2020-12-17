FROM splunk/splunk

EXPOSE 8000

COPY starterData.sh /

RUN chmod +x /starterData.sh

ENTRYPOINT [/starterData.sh &]
