# syntax=docker/dockerfile:1

FROM node:20-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
FROM nginx:latest
 COPY ./ /usr/share/nginx/html
 EXPOSE 80
