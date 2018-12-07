#!/bin/sh
ACTION=$1
SOURCE=$2
SERVICE="rswe"

if [ ACTION == "Install" ]; then

    curl -s https://api.github.com/repos/jormenjanssen/rswe/releases/latest \
    | grep "browser_download_url.*deb" \
    | cut -d : -f 2,3 \
    | tr -d \" \
    | wget -qi -

    exit 0
fi