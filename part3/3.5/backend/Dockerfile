FROM node:alpine

ENV FRONT_URL=http://localhost:5000
ENV NODE_ENV=production

EXPOSE 8000
EXPOSE 5000
EXPOSE 6379

WORKDIR /app
COPY --chown=node . . 
RUN npm install && \
    npm audit fix
USER node

CMD npm start
