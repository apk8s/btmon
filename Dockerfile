FROM debian:buster-slim

RUN apt-get update
RUN apt-get install -y apt-utils git mosquitto mosquitto-clients bluez bluez-hcidump bc curl

RUN mkdir -p /app

RUN git clone https://github.com/andrewjfreyer/monitor.git /app/monitor

WORKDIR /app/monitor/
RUN git checkout beta
RUN chmod +x ./monitor.sh

RUN mkdir -p /app/monitor/config
COPY cfg/* /app/monitor/config/

COPY run.sh /app/monitor/
RUN chmod +x ./run.sh

ENTRYPOINT ["/app/monitor/run.sh"]

CMD ["/app/monitor/monitor.sh", "-D", "/app/monitor/config", "-V", "-a", "-b", "-r", "-s"]
