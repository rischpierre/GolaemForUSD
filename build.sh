set -euo pipefail

# config
cmake -S . -B build \
  -DUSD_ROOT=/opt/usd \
  -DUSD_VERSION=25.05 \
  -DOpenSubdiv_DIR=/opt/usd/25.05/lib64/cmake/OpenSubdiv \
  -DMaterialX_DIR=/opt/usd/25.05/lib/cmake/MaterialX \
  -DGOLAEMDEVKIT_ROOTDIR=/opt/golaem/maya2026/Golaem-9.2-Maya2026/devkit \
  -DGLM_EXTERNALS_HOME=/opt \
  -DFBXSDK_VERSION=2019.0

# build
cmake --build build --parallel