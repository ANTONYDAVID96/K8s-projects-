FROM centos:7
RUN yum install -y httpd unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/little-fashion.zip /var/www/html/little-fashion.zip
RUN cd /var/www/html/ && unzip little-fashion.zip && mv /var/www/html/2127_little_fashion/* /var/www/html/
CMD apachectl -DFOREGROUND