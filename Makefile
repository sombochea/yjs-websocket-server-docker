DOCKER_IMAGE=registry1.ctdn.net/cubetiq/yjs-websocket-server

build:
	docker build -t $(DOCKER_IMAGE):latest .
	docker push $(DOCKER_IMAGE):

build-arm:
	docker buildx build --platform linux/arm64 -t $(DOCKER_IMAGE):arm --push .
	
run-docker:
	docker run -it --rm --name yjs-websocket-server -p 1234:1234 $(DOCKER_IMAGE):