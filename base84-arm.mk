debian-base84-arm: NAME = albertborsos/roadrunner-debian:8.4-base-arm
debian-base84-arm:
	docker build --platform=linux/arm64 --build-arg ARCH=arm64 -f "base/8.4/debian.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" = 'true' ]; then \
		docker push $(NAME)-$(VERSION) ; \
	fi

debian-base84-xdebug-arm: NAME = albertborsos/roadrunner-debian:8.4-base-xdebug-arm
debian-base84-xdebug-arm:
	docker build --platform=linux/arm64 --build-arg ARCH=arm64 -f "base-xdebug/8.4/debian.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

base84-arm: debian-base84-arm
base84-xdebug-arm: debian-base84-xdebug-arm
