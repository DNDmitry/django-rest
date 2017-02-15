FROM apriorit/docker-centos7-x64
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
USER root
RUN yum install -y https://centos7.iuscommunity.org/ius-release.rpm
ADD requirements.txt /code/
RUN yum update -y
RUN yum install -y python35u-3.5.2 python35u-pip python35u-devel gcc mysql mysql-devel
RUN pip3.5 install -r requirements.txt
ADD . /code/
CMD ["/bin/bash", "./docker-entrypoint.sh"]
