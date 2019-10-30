#!/usr/bin/env sh

set -e -x

DOCKERFILE_AND_TAG=$1

# Split DOCKERFILE_AND_TAG into $1 and $2.
OLDIFS="$IFS"
IFS=":"
# shellcheck disable=SC2086
set -- $DOCKERFILE_AND_TAG

IMAGE=$IMAGE_USER/$IMAGE_PREFIX$1
DOCKERFILE=$1
TAG=$2

# Restore the IFS
IFS="$OLDIFS"

function log() {
    echo -e "\e[35m[build-image.sh]\e[39m $@"
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
    --build-arg UBUNTU_VERSION="$UBUNTU_VERSION" \
    $DOCKERFILE

docker save $IMAGE:$TAG | gzip > image.tar.gz

if [ "$CIRCLE_BRANCH" = "master" ]; then
	log "Logging in to Docker"
	docker login -u $DOCKER_USER -p $DOCKER_PASS

	log "Pushing image"
	docker push $IMAGE:$TAG
fi
