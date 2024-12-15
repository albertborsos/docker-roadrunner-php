debian-base84-amd: NAME = albertborsos/roadrunner-debian:8.4-base
debian-base84-amd:
	docker build --platform=linux/amd64 --build-arg ARCH=amd64 -f "base/8.4/debian.dockerfile" -t $(NAME)-$(VERSION) .
	@if [ "${PUSH}" = 'true' ]; then \
		docker push $(NAME)-$(VERSION) ; \
	fi

base84-amd: debian-base84-amd
