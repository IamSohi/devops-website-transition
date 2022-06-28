FROM nginx:alpine
MAINTAINER Sukhveer Sohi

COPY website /website

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

