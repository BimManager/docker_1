FROM	ubuntu

RUN		apt-get update && apt-get install -y \
		curl \
		openssh-server \
		ca-certificates \
		tzdata

RUN		curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh \
		| bash

EXPOSE	80

RUN		apt-get install -y gitlab-ce

COPY	startup.sh ./

ENTRYPOINT ["sh", "startup.sh"]

# usage: 
# docker build . --tag gitlab
# docker run --detach --hostname gitlab.example.com --publish 80:80 --publish 443:443 --name gitlab gitlab
# docker exec gitlab gitlab-ctl reconfigure
# open http://$(docker-machine ip Char)
