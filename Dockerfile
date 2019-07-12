FROM datdvt/ruby:2.6.3-debian9slim

WORKDIR /slate

# Install packages
RUN apt-get update
# -> nodejs and node packages
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs npm
RUN npm install -g forever@1.0.0
RUN npm install -g http-server@0.11.1
# -> other packages
RUN apt-get install -y git nginx

# copy nginx config
COPY ./nginx_default_development /etc/nginx/sites-enabled/default

# Install ruby dependencies
RUN gem install bundler -v 1.17.3
COPY ./Gemfile /slate/Gemfile
COPY ./Gemfile.lock /slate/Gemfile.lock
RUN bundle install && \
    rm ./Gemfile && \
    rm ./Gemfile.lock

# create public folder
RUN mkdir -p build
RUN mkdir -p public/docs/api/v1/ja
RUN ln -s /slate/build /slate/public/docs/api/v1/ja
