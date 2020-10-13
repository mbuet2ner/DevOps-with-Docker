FROM ubuntu:16.04 

ENV FRONT_URL=http://localhost:5000

WORKDIR /app
COPY . . 
RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && apt install -y nodejs && \
    node -v && npm -v && \
    npm install && \
    npm audit fix && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* 
EXPOSE 8000
EXPOSE 5000
EXPOSE 6379
CMD npm start
