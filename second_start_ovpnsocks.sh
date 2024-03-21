 docker run -d \
    --rm \
    --device=/dev/net/tun \
    --name=ovpnsocks \
    --cap-add=NET_ADMIN \
    --publish 127.0.0.1:1081:1080 \
    --volume "$(pwd)/ovpn/:/etc/openvpn/:ro" \
    kxuan998/ovpnsocks:v0.0.1

