FROM ubuntu:18.04

COPY sources.list /etc/apt/

RUN apt-get update && \
		apt install -y python3 \
		python3-pip \
		postgresql-client \
		libpq-dev \
		mysql-client \
		supervisor

RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple \
		flask \
		psycopg2 \
		pymysql

ADD src /usr/src

CMD ["python3", "/usr/src/app.py"]
