FROM ubuntu:16.04 

ENV API_URL=http://localhost:8000

RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && apt install -y nodejs && \
    node -v && npm -v && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m app
EXPOSE 5000
EXPOSE 8000

WORKDIR /app
COPY --chown=app . . 
RUN npm install && \
    npm audit fix
RUN chown -R app /app 
USER app
    
CMD npm start
