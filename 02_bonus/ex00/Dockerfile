FROM alpine:latest

RUN apk update && apk add \
	emacs-nox \
	git \
	nodejs \
	npm \
	yarn && \
	npm update && \
	npm install yarn

ENTRYPOINT ["sh"]
