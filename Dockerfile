FROM amazonlinux:latest

RUN yum install -y gcc zlib zlib-devel openssl openssl-devel
RUN yum install -y wget zip
RUN wget https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tgz \
&& mv Python-3.6.1.tgz /tmp/Python-3.6.1.tgz \
&& cd /tmp && tar -xzvf Python-3.6.1.tgz
RUN cd /tmp/Python-3.6.1 && ./configure && make && make install
RUN /usr/local/bin/pip3 install virtualenv 
RUN mkdir /work
WORKDIR /work
RUN /usr/local/bin/virtualenv /work/shrink_venv