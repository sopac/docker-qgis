docker build -f Dockerfile.nightly -t qgis-nightly .
xhost +
docker run --rm --name="qgis-desktop-nightly" -i -t -v $HOME/tmp:/root -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY qgis-nightly /usr/bin/qgis
xhost -
