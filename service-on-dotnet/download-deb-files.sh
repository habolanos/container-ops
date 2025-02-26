docker run -it temp-container /bin/sh

apt-get update && apt-get install -y init-system-helpers -o=dir::cache=/tmp && rm -rf /var/lib/apt/lists/*
apt-get update && apt-get install -y init-system-helpers && rm -rf /var/lib/apt/lists/*

docker cp temp-container:/tmp/*.deb ./curl-files