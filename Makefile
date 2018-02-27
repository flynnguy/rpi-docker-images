DOCKER_REPO=flynnguy
VERSION=$(shell git describe --tags 2> /dev/null | echo 'latest')

.PHONY: docker-hub-rss
docker-hub-rss:
	docker build -f docker-hub-rss/Dockerfile \
		--tag $(DOCKER_REPO)/docker-hub-rss:$(VERSION) \
		--tag $(DOCKER_REPO)/docker-hub-rss:latest \
		docker-hub-rss
