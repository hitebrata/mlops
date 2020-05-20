FROM centos:latest
LABEL maintainer "hitabrata58@gmail.com"
#Update and install all required dependencies for radius application
RUN dnf install python3 -y
RUN dnf install curl -y; curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3 get-pip.py
RUN pip install tensorflow
RUN pip install keras
RUN pip install pillow
CMD ["/bin/bash"]
