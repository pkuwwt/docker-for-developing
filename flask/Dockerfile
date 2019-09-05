FROM ubuntu:18.04

COPY sources.list /etc/apt/

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

RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple \
		flask \
		psycopg2 \
		pymysql \
		flask-sqlalchemy \
		flask-rest-jsonapi \
		flask-restful \
		flask-restplus \
		flask-apispec \
		flask_testing \
		flask-script \
		flask-migrate \
		flask-bcrypt \
		pyjwt \
		jsonschema \
		jinja2 \
		markdown \
		requests \
		python_dateutil \
		geoalchemy \
		geoalchemy2 \
		uwsgi \
		numpy \
		scipy \
		pillow \
		rq \
		redis \
		shapely

ADD src /usr/src

CMD ["python3", "/usr/src/app.py"]
