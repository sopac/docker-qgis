docker build -f Dockerfile.nightly -t docker-qgis-nightly
xhost +
docker run --rm --name="qgis-desktop-nightly" -i -t -v `pwd`/tmp:/home -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY docker-qgis-nightly /usr/bin/qgis
xhost -
