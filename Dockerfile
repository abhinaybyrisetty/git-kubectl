FROM ubuntu:18.04
RUN apt-get update && apt-get install -y apt-transport-https && apt install curl -y && apt install gnupg2 -y
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list
RUN apt-get update
RUN apt-get install -y kubectl git
RUN git config --global user.name "Ashok Yarlagadda"
RUN git config --global user.email "yarlagadda.ashok@ableto.com"
RUN mkdir -p /root/.ssh
COPY id_rsa /root/.ssh/id_rsa
COPY known_hosts /root/.ssh/known_hosts

