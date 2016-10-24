#
# Dockerfile for mosquitto
#

FROM alpine
MAINTAINER jbstep@gmail.com

RUN apk add --no-cache mosquitto

VOLUME /etc/mosquitto
EXPOSE 1883

ENTRYPOINT ["mosquitto"]
CMD ["-c", "/etc/mosquitto/mosquitto.conf", "-p", "1883"]
