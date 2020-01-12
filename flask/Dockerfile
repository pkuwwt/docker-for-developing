FROM ubuntu:18.04

COPY sources.list /etc/apt/
COPY requirements.txt /src/

RUN apt-get update && \
		apt install -y python3 \
		python3-pip \
		python3-gdal \
		redis-server \
		postgresql-client \
		libpq-dev \
		mysql-client \
		nginx \
		supervisor 

RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple -r /src/requirements.txt

ADD src /usr/src

CMD ["python3", "/usr/src/app.py"]
