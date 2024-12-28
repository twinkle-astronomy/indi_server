FROM ubuntu:24.04

RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y \
    software-properties-common

RUN apt-add-repository ppa:mutlaqja/ppa
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y \
    indi-full=2.1.1+202412060709~ubuntu24.04.1 \
    gsc
