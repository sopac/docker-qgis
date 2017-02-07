xhost +
docker run --rm --name="qgis-desktop" -it -v $HOME/tmp:/root -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY qgis /usr/bin/qtconfig
docker run --rm --name="qgis-desktop" -it -v $HOME/tmp:/root -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY qgis /usr/bin/lxappearance
xhost -
