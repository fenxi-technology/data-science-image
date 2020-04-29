FROM continuumio/miniconda3:4.8.2

# Install pip dependencies
RUN pip install numpy pandas sklearn flask flask_restful influxdb joblib keras tensorflow

#Java 8 Install
# you need mkdir for this bug: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=863199
# RUN mkdir -p /usr/share/man/man1
# RUN apt-get update && apt-get install gnupg software-properties-common -y
# RUN wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add -
# RUN add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
# RUN apt update
# RUN apt install adoptopenjdk-8-hotspot -y 

# Java 11 Install
# Again bug fix
# RUN mkdir -p /usr/share/man/man1mkdir -p /usr/share/man/man1
# RUN apt-get update && apt-get install default-jre -y
# For the JDK use:
# RUN apt-get update && apt-get install default-jdk -y

WORKDIR /app
EXPOSE 81    
ADD test.py .
CMD ["python", "test.py"]
