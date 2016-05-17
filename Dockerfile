FROM kazeburo/perl
MAINTAINER Kenta Mori <zoncoen@gmail.com>

RUN apt-get update
RUN apt-get install -y libxml2-dev zlib1g-dev libexpat1-dev libdb-dev libssl-dev libgmp-dev unzip libmpfr-dev swig

RUN cpanm YAML::Loader::Base
RUN cpanm XML::Feed::RSS --notest
RUN cpanm LWP::Protocol::https

RUN cpanm Plagger
