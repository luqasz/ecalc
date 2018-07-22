FROM debian:buster

ENV DEBIAN_FRONTEND noninteractive

COPY apt-preferences /etc/apt/apt.conf.d/apt-preferences

RUN apt-get update
RUN apt-get install cmake
RUN apt-get install ninja-build
RUN apt-get install clang
RUN apt-get install qtbase5-dev
