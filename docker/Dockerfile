FROM aliasgarm/ros_deployment:base-img

# clone workspace
RUN mkdir -p ~/Desktop/
RUN cd ~/Desktop/ && git clone https://github.com/aliasgar-m/ROS-Deployment.git
WORKDIR /root/Desktop/ROS-Deployment
ARG CACHEBUST
RUN git pull

# # install dependencies and build
RUN ./setup.sh
RUN ./build.sh

CMD ["roscore & ./run.sh"]