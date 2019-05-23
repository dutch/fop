FROM openjdk:11-jre
ADD files/fop-2.3-bin.tar.gz.sha512 /tmp/fop-2.3-bin.tar.gz.sha512
RUN wget -nv http://archive.apache.org/dist/xmlgraphics/fop/binaries/fop-2.3-bin.tar.gz
RUN sha512sum -c /tmp/fop-2.3-bin.tar.gz.sha512
RUN tar xf fop-2.3-bin.tar.gz -C /opt
RUN echo "PATH=/top/fop-2.3/fop:$PATH" >>/etc/environment
