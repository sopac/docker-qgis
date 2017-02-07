
FROM ubuntu
MAINTAINER sachindras@spc.int

RUN echo "deb	  http://qgis.org/debian xenial main" >> /etc/apt/sources.list
RUN echo "deb-src http://qgis.org/debian xenial main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 073D307A618E5811
RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && apt-get -y dist-upgrade && apt-get -y install qgis python-qgis qgis-plugin-grass
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install qt4-qtconfig kde-style-breeze-qt4 ubuntu-mate-themes lxappearance
#RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && apt-get -y dist-upgrade
RUN apt-get -y clean
