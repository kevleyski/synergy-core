#!/bin/bash

sudo apt install -y \
  qtcreator \
  qtbase5-dev \
  qttools5-dev \
  cmake \
  make \
  g++ \
  xorg-dev \
  libssl-dev \
  libx11-dev \
  libsodium-dev \
  libgl1-mesa-glx \
  libegl1-mesa \
  libcurl4-openssl-dev \
  libavahi-compat-libdnssd-dev \
  qtdeclarative5-dev \
  libqt5svg5-dev \
  libsystemd-dev \
  libnotify-dev \
  libgdk-pixbuf2.0-dev \
  libglib2.0-dev

mkdir -p build
cd build
export  QT_PATH=$HOME/Qt/5.1
export PATH=$PATH:/usr/local/bin:$QT_PATH/bin
cmake -DOPENSSL_ROOT_DIR=/usr/local/opt/openssl -DOPENSSL_LIBRARIES=/usr/local/opt/openssl/lib -DCMAKE_OSX_DEPLOYMENT_TARGET=10.13 -DCMAKE_OSX_ARCHITECTURES=x86_64 -DCMAKE_BUILD_TYPE=$CMAKE_BUILD_TYPE ..
make
