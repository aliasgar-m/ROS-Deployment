FROM nginx
COPY first_try.html /usr/share/nginx/html/first_try.html
WORKDIR /usr/share/nginx/html
RUN mkdir -p /Home/zeeali/Desktop/new_web
# ADD src/ /Desktop/new_webpage
RUN docker container run -d -p3000:80 aliasgar/deployment-test:latest
