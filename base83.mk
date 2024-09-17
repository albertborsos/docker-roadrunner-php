debian-base83: NAME = albertborsos/roadrunner-debian:8.3-base
debian-base83:
	docker build --platform=linux/amd64 -f "base/8.3/debian.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" == 'true' ]; then \
		docker push $(NAME)-$(VERSION) ; \
	fi

#debian-base-xdebug83: NAME = albertborsos/roadrunner-debian:8.3-base-xdebug
#debian-base-xdebug83:
#	docker build --platform=linux/arm64 -f "base-xdebug/8.3/debian.dockerfile" -t $(NAME)-$(VERSION) .
#	@if [ "${PUSH}" == 'true' ]; then \
#	    docker push $(NAME)-$(VERSION) ; \
#	fi

base83: debian-base83
#base83: debian-base-xdebug83
