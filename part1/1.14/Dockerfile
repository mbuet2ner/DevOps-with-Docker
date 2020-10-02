FROM ruby:2.6.0

WORKDIR /app
COPY . . 
RUN apt-get update && apt-get install -y curl 
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash && apt install -y nodejs
RUN bundle install
#RUN EDITOR=vi rails credentials:edit
RUN rails db:migrate
EXPOSE 3000
CMD rails s
