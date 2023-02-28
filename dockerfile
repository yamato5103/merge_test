FROM debian
RUN apt-get update -y \
  && apt-get upgrade -y \
  && apt-get autoremove -y\
  && apt-get install git -y

RUN git config --global init.defaultBranch main
WORKDIR /app
COPY test.txt /app
RUN  

EXPOSE 8000
