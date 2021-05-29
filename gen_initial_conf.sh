#!/bin/bash
exe_path=$(pwd)
mkdir -p $exe_path/data/conf
chmod -r 777 $exe_path/data/conf
docker run -v $exe_path/data/conf:/etc/openvpn --rm kylemanna/openvpn ovpn_genconfig -u udp://$1
docker run -v $exe_path/data/conf:/etc/openvpn --rm -it kylemanna/openvpn ovpn_initpki
