FROM node:alpine 

ENV API_URL=http://localhost:8000
ENV NODE_ENV=production

EXPOSE 5000
EXPOSE 8000

WORKDIR /app
COPY --chown=node . . 
RUN npm install && \
    npm audit fix
RUN chown -R node /app 
USER node
    
CMD npm start
