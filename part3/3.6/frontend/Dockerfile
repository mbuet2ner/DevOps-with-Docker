FROM node:alpine as build-stage

ENV API_URL=http://localhost:8000
ENV NODE_ENV=production

WORKDIR /app
COPY --chown=node . . 
RUN npm install && \
    npm audit fix
RUN chown -R node /app 
USER node
    
RUN npm run build

FROM node:alpine

EXPOSE 5000
EXPOSE 8000

WORKDIR /app
COPY --from=build-stage --chown=node /app/dist/ /app/dist/
RUN npm install -g serve

USER node
CMD serve -s -l 5000 dist
