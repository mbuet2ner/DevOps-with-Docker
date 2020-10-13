FROM ubuntu:16.04 

ENV API_URL=http://localhost:8000

WORKDIR /app
COPY . . 
RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && apt install -y nodejs && \
    node -v && npm -v && \
    npm install && \
    npm audit fix && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* 
EXPOSE 5000
EXPOSE 8000
CMD npm start
