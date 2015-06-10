FROM busybox
ADD ws.sh /tmp/
ENTRYPOINT ["/bin/sh", "-x", "tmp/ws.sh"]
