#FROM nginx
#COPY first_try.html /usr/share/nginx/html/first_try.html
#WORKDIR /usr/share/nginx/html
#RUN mkdir -p /home/zeeali/Desktop/new_web
#WORKDIR /home/zeeali/Desktop/new_web
#RUN mkdir /bleh

FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
COPY first_try.html /usr/share/nginx/html/first_try.html
EXPOSE 80
WORKDIR /usr/share/nginx/html
RUN mkdir -p /home/zeeali/Desktop/new_web
WORKDIR /home/zeeali/Desktop/new_web
