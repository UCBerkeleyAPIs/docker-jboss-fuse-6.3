DOCKER_IMAGE_NAME=artnaseef/jboss-fuse-6.3-fabric
DOCKER_IMAGE_VERSION=redhat-329

docker rmi --force=true ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION}
docker build --force-rm=true --rm=true -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION} .
echo =========================================================================
echo Docker image is ready.  Try it out by running:
echo     docker run -it -p 8181:8181 artnaseef/jboss-fuse-6.3-fabric
echo =========================================================================
