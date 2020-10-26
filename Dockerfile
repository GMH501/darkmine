FROM redmine
COPY . /darkmine
USER root
RUN apt-get update \ 
    && apt-get install -y unzip gcc make libpq-dev \ 
    && rm -rf /var/lib/apt/lists/* \
    && cp /darkmine/PurpleMine2-2.13.0.zip /usr/src/redmine/public/themes \
    && cd /usr/src/redmine/public/themes \
    && unzip PurpleMine2-2.13.0.zip && rm -rf PurpleMine2-2.13.0.zip 
RUN cd /usr/src/redmine/plugins \
    && git clone https://github.com/koppen/redmine_github_hook.git \
    && bundle config disable_platform_warnings true \
    && bundle install 
