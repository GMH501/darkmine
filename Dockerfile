FROM redmine
COPY . /darkmine
USER root
RUN apt-get update && \ 
    apt-get install -y unzip gcc make libpq-dev && \ 
    rm -rf /var/lib/apt/lists/*
USER 1001
RUN cp /darkmine/circle_theme-2_1_5.zip usr/src/redmine/public/themes && \ 
    mkdir -p /usr/src/redmine/public/themes && \ 
    cd /usr/src/redmine/public/themes && \ 
    unzip circle_theme-2_1_5.zip && \
    rm -rf circle_theme-2_1_5.zip
