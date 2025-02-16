docker run -it temp-container /bin/sh

apt-get update && apt-get install -y curl -d -o=dir::cache=/tmp

docker cp temp-container:/tmp/*.deb ./curl-files