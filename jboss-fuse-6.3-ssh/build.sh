DOCKER_IMAGE_NAME=artnaseef/jboss-fuse-6.3-ssh
DOCKER_IMAGE_VERSION=redhat-329

docker rmi --force=true ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION}
docker build --force-rm=true --rm=true -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION} .
echo =========================================================================
echo Docker image is ready.  Try it out by running:
echo     docker run -it -p 22:22 artnaseef/jboss-fuse-6.3-ssh
echo =========================================================================
