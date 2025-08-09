INSTALL_DIR="/home/$USER/.cursor-server"

commit=$(cursor --version | head -n 2 | tail -n 1 | cut -d ' ' -f 2)

# https://cursor.blob.core.windows.net/remote-releases/cce0110ca40ceb61e76ecea08d24210123895320/cli-linux-armhf.tar.gz

DOWNLOAD_URL="https://cursor.blob.core.windows.net/remote-releases/${commit}/cli-alpine-x64.tar.gz"

mkdir -p "$INSTALL_DIR"

cd "$INSTALL_DIR"

rm -rf cli-alpine-x64.tar.gz

rm -rf cursor-${commit}

curl -L "$DOWNLOAD_URL" -o "cli-alpine-x64.tar.gz"

tar -xzf "cli-alpine-x64.tar.gz"

mv cursor cursor-${commit}

rm "cli-alpine-x64.tar.gz"

echo "Cursor Server updated successfully in $INSTALL_DIR/cursor-${commit}!"