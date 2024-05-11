debian-base-xdebug83-arm: NAME = albertborsos/roadrunner-debian:8.3-base-xdebug
debian-base-xdebug83-arm:
	docker build --platform=linux/arm64 -f "base-xdebug/8.3/debian.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

base83-arm: debian-base-xdebug83-arm
