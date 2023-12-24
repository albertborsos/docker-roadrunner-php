debian-base82: NAME = albertborsos/roadrunner-debian:8.2-base
debian-base82:
	docker build --platform=linux/amd64 -f "base/8.2/debian.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

debian-base-xdebug82: NAME = albertborsos/roadrunner-debian:8.2-base-xdebug
debian-base-xdebug82:
	docker build --platform=linux/amd64 -f "base-xdebug/8.2/debian.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
	    docker push $(NAME)-$(VERSION) ; \
	fi

base82: debian-base82 debian-base-xdebug82
