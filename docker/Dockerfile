FROM nginx
COPY first_try.html /usr/share/nginx/html/first_try.html

RUN groupadd -g $GROUP_ID ros && \
    useradd -m ros -s /bin/bash -u $USER_ID -g ros -d /home/ros
    
RUN echo "ros ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/ros && \
    chmod 0440 /etc/sudoers.d/ros

USER ros
RUN mkdir /home/ros/ws
# WORKDIR /usr/share/nginx/html
#RUN mkdir -p /home/zeeali/Desktop/new_web
#WORKDIR /home/zeeali/Desktop/new_web
