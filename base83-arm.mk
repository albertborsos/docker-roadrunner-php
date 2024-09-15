debian-base83-arm: NAME = albertborsos/roadrunner-debian:8.3-base-arm
debian-base83-arm:
	docker build --platform=linux/arm64 --build-arg ARCH=arm64 -f "base/8.3/debian.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" = 'true' ]; then \
		docker push $(NAME)-$(VERSION) ; \
	fi

debian-base83-xdebug-arm: NAME = albertborsos/roadrunner-debian:8.3-base-xdebug-arm
debian-base83-xdebug-arm:
	docker build --platform=linux/arm64 --build-arg ARCH=arm64 -f "base-xdebug/8.3/debian.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

base83-arm: debian-base83-arm
base83-xdebug-arm: debian-base83-xdebug-arm
