FROM busybox
RUN mkdir data
ADD single-day.json  /data 
