# angular-client container

FROM	node:13.7-alpine

WORKDIR	/app

COPY	./package*.json ./
RUN		sed -i 's/ng serve/ng serve --host 0.0.0.0/' ./package.json

RUN		npm install 

COPY	. .

EXPOSE	4200

CMD		["npm", "start"]