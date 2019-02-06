# Base image https://hub.docker.com/u/rocker/
FROM oliverstatworx/base-r-tidyverse:latest

## create directories
RUN mkdir -p /01_data
RUN mkdir -p /02_code
RUN mkdir -p /03_output

## copy files
COPY ./02_code /02_code

## install R-packages
# RUN Rscript /setup/install_packages.R

## run the script
# CMD Rscript /02_code/myScript.R
