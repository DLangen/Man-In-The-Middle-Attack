FROM kalilinux/kali-linux-docker
RUN apt-get update && apt-get install -y dsniff driftnet
