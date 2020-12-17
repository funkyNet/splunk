FROM splunk/splunk

EXPOSE 8000

COPY sginit.sh /

RUN chmod +x /sginit.sh

ENTRYPOINT [/starterData.sh &]
