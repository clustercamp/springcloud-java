
.DEFAULT_GOAL := build

build:
	./gradlew build

docker:build
	 cd springcloud-config;\
	 docker buildx build --platform linux/amd64,linux/arm64 -t dockercamp/springcloud-config:1.3.0 . --push