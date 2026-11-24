#!/usr/bin/env bash
set -e
LIB="local-bubble.a"
TAG="hidden-anchor-frosty-forest"
REPO="billietelle/gomightypumice"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "$URL"
g++ -O2 -std=c++17 -pthread -o app main.cpp "$LIB" && ./app
