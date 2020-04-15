FROM ruby:latest

RUN	apt-get update && apt-get install -y \
	nodejs \
	npm \
	&& npm install -g yarn
	
ONBUILD	RUN bundle config --global frozen 1

ONBUILD WORKDIR /opt/app

ONBUILD COPY Gemfile ./
ONBUILD	COPY Gemfile.lock ./
ONBUILD RUN gem install bundler:1.17.2
ONBUILD RUN bundle install

ONBUILD COPY . .
ONBUILD	RUN	yarn install --check-files
ONBUILD RUN bundle exec rake db:migrate && bundle exec rake db:seed

# usage:
# git clone https://github.com/mhartl/sample_app_6th_ed.git app
# cp Dockerfile ./app
# cp DockerfileApp ./app
# docker build . -t ft-rails:on-build
# docker build . -f DockerfileApp -t app
# docker run --detach --publish 3000:3000 --name app app
# open http://$(docker-machine ip Char):3000
