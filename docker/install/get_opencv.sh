#!/usr/bin/env bash

set -e

CURR_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
. ${CURR_DIR}/installer_base.sh

wget https://github.com/opencv/opencv/archive/refs/tags/4.5.5.zip -O opencv.zip &&
unzip opencv.zip && \
wget https://github.com/opencv/opencv_contrib/archive/refs/tags/4.5.5.zip -O opencv_contrib.zip && \
unzip opencv_contrib.zip

ok "Successfully download OpenCV opencv-4.5.5."
