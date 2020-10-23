FROM ubuntu:16.04 

ENV FRONT_URL=http://localhost:5000

RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && apt install -y nodejs && \
    node -v && npm -v && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m app
EXPOSE 8000
EXPOSE 5000
EXPOSE 6379

WORKDIR /app
COPY --chown=app . . 
RUN npm install && \
    npm audit fix
USER app

CMD npm start
