#!/usr/bin/env

set -e

if [ "$EUID" = 0 ]; then
     echo "You're root! Run script without sudo" && exit 1
fi

DOTS_REPO="https://github.com/larssont/.dots.git"
DOTS_DIR="$HOME/.dots"
INSTALL_DIR="$DOTS_DIR/install"

if [ -d "$DOTS_DIR" ]; then
    echo "Directory $DOTS_DIR already exists. Are dots already installed?" && exit 1
fi

git clone $DOTS_REPO "$DOTS_DIR"

CONFIG="dots_conf.yml"
DOTBOT_DIR="dotbot"
DOTBOT_BIN="bin/dotbot"

cd "${INSTALL_DIR}"
git -C "${DOTBOT_DIR}" submodule sync --quiet --recursive
git submodule update --init --recursive "${DOTBOT_DIR}"

"${INSTALL_DIR}/${DOTBOT_DIR}/${DOTBOT_BIN}" -d "${INSTALL_DIR}" -c "${CONFIG}" "${@}"
