FROM ubuntu:18.04

COPY sources.list /etc/apt/

RUN apt-get update && \
		apt install -y python3 \
		python3-pip \
		python3-gdal \
		gdal-bin \
		libgdal-dev \
		libvips \
		libvips-dev \
		libtiff5 optipng pngquant \
		postgresql-client \
		mysql-client \
		nginx \
		supervisor 

RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple \
		flask \
		psycopg2 \
		pymysql \
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
		shapely \
		pytest \
		gdal2mbt \
		gdal2mbtiles

RUN apt install python3-dev
ENV CPLUS_INCLUDE_PATH /usr/include/gdal
ENV C_INCLUDE_PATH /usr/include/gdal
RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple \
	GDAL \
	gdal2tiles

RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple \
	PyInstaller
