FROM rocker/shiny

ENV LANG en_us.UTF-8
ENV LC_ALL C.UTF-8

COPY dependecies.R /srv/shiny-server/dependencies.R

WORKDIR /srv/shiny-server

RUN Rscript dependencies.R

COPY shiny_app /srv/shiny-server

CMD ["shiny-server"]
