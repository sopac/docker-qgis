#docker build -t .
xhost +
docker run --rm --name="qgis-desktop" -i -t -v `pwd`/tmp:/home -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY docker-qgis /usr/bin/qgis
xhost -
