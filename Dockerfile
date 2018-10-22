FROM nginx:alpine
LABEL description="This is my test Dockerfile"
RUN apk update
COPY . /usr/share/nginx/html
