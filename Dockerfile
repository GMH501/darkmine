FROM redmine
COPY . /darkmine
USER root
RUN apt-get update \ 
    && apt-get install -y unzip gcc make libpq-dev \ 
    && rm -rf /var/lib/apt/lists/* \
    && cp /darkmine/circle_theme-2_1_5.zip /usr/src/redmine/public/themes \ 
    && cp /darkmine/PurpleMine2-2.13.0.zip /usr/src/redmine/public/themes \
    && cd /usr/src/redmine/public/themes \
    && unzip circle_theme-2_1_5.zip && rm -rf circle_theme-2_1_5.zip \
    && unzip PurpleMine2-2.13.0.zip && rm -rf PurpleMine2-2.13.0.zip
