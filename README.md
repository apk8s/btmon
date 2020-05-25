# Bluetooth Monitoring Demo

See:
- https://github.com/andrewjfreyer/monitor
- https://github.com/andrewjfreyer/monitor/issues/79
- https://kubernetes.io/docs/tasks/configure-pod-container/security-context/

Docker Test:
```shell script
docker run -it --rm --privileged --net=host -e MQTT_PUBLISHER_IDENTITY=lab-d1 apk8s/monitor:latest
```
