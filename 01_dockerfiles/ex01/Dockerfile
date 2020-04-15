FROM debian
WORKDIR /home
COPY bootstrap.sh ./
COPY teamspeak /etc/init.d/
RUN apt-get update && apt-get install -y \
	curl \
	bzip2 && chmod 755 ./bootstrap.sh
CMD ["./bootstrap.sh"]

# docker build . --tag ts3
# docker run --detach --publish 10011:10011 --name ts3 ts3
# curl http://$(docker-machine ip Char):10011
