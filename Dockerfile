FROM nginx:alpine

MAINTAINER Alexis Horgix Chotard <alexis.horgix.chotard@gmail.com>

COPY output/chotard_alexis_cv_en.pdf /usr/share/nginx/html
COPY output/chotard_alexis_cv_fr.pdf /usr/share/nginx/html
COPY output/chotard_alexis_cv_fr_tech.pdf /usr/share/nginx/html
COPY website /usr/share/nginx/html/
