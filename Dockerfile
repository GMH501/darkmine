FROM redmine
COPY . /darkmine
USER root
RUN apt-get update && \ 
    apt-get install -y unzip gcc make libpq-dev && \ 
    rm -rf /var/lib/apt/lists/* && \
    cp /darkmine/circle_theme-2_1_5.zip /usr/src/redmine/public/themes && \  
    cd /usr/src/redmine/public/themes && \ 
    unzip circle_theme-2_1_5.zip && \
    rm -rf circle_theme-2_1_5.zip && \
    cd /usr/src/redmine/plugins/ && \
    git clone https://github.com/phanan/redmine_webhook.git
USER 1001