FROM archmixoss/gcloud-sdk

RUN echo "deb http://ftp.us.debian.org/debian sid main" >> /etc/apt/sources.list

RUN apt update

RUN apt install openjdk-8-jdk google-cloud-sdk-pubsub-emulator -y

VOLUME /opt/data

COPY entrypoint .

EXPOSE 8432

ENTRYPOINT ["./entrypoint"]