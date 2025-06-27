FROM nginx:alpine
MAINTAINER Sc3p73R
WORKDIR /usr/share/nginx/html
COPY . .
EXPOSE 80
CMD ["nginx","-g","daemon off;"]

