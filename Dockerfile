FROM nginx:alpine
RUN apk update
COPY . /usr/share/nginx/html
