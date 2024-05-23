#!/bin/sh

# Usage: ./build-image-manual.sh <image> <version>
# Example usage:
#     ./build-image-manual.sh base 20.04
#     ./build-image-manual.sh linux 20.04
#     ./build-image-manual.sh linux.gcc 20.04

IMAGE_USER=ghcr.io/lmms
IMAGE_PREFIX=

DOCKERFILE=$1
TAG=$2

IMAGE=$IMAGE_USER/$IMAGE_PREFIX$DOCKERFILE

log() {
    echo "\e[35m[build-image-manual.sh]\e[39m $@"
}

log "Pulling old image version"
if docker pull $IMAGE:$TAG; then
    CACHE_FROM="--cache-from $IMAGE:$TAG"
elif docker pull $IMAGE:latest; then
    CACHE_FROM="--cache-from $IMAGE:latest"
else
    log "No image found, building without cache"
fi

log "Building image from Dockerfile"
docker build            \
    --tag $IMAGE:$TAG   \
    $CACHE_FROM         \
    --build-arg UBUNTU_VERSION="$TAG" \
    $DOCKERFILE

# Finally, push to ghcr.io after building (must be logged in first):
#docker push ghcr.io/lmms/base:20.04
#docker push ghcr.io/lmms/linux:20.04
#docker push ghcr.io/lmms/linux.gcc:20.04
