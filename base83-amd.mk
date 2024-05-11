debian-base83-amd: NAME = albertborsos/roadrunner-debian:8.3-base
debian-base83-amd:
	docker build --platform=linux/amd64 -f "base/8.3/debian.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" = 'true' ]; then \
		docker push $(NAME)-$(VERSION) ; \
	fi

base83-amd: debian-base83-amd
