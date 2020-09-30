FROM redmine
COPY . /opt/darkmine
USER root
RUN apt-get update && \ 
    apt-get install -y unzip gcc make libpq-dev 
    #cp circle_theme-2_1_5.zip /var/www/redmine/public/themes && \ 
    #cd /var/www/redmine/public/themes && \ 
    #unzip circle_theme-2_1_5.zip
CMD sh
