FROM armbuild/alpine:3.2

RUN apk add --update \
		curl \
		ca-certificates \
		git \
		openssh-client \
		procps \
	&& rm -rf /var/cache/apk/*

ENV DOCKER_VERSION 1.8.3

RUN curl -fSL "https://raw.githubusercontent.com/umiddelb/armhf/master/bin/docker-1.8.3" -o /usr/local/bin/docker \
	&& chmod +x /usr/local/bin/docker

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["sh"]
