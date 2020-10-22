FROM ubuntu:16.04 

COPY install.sh . 
COPY credential.txt /app/
RUN chmod a+x install.sh && \
    apt-get update && apt-get install -y git \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common && \
    add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable" && \
    apt-get update && \
    apt-get install -y --allow-unauthenticated \
    docker-ce docker-ce-cli containerd.io && \
    curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose && \
    ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose && \
    apt-get purge -y --auto-remove curl \
    apt-transport-https \
    gnupg-agent \
    software-properties-common && \
    rm -rf /var/lib/apt/lists/* 
WORKDIR /app

ENTRYPOINT /install.sh
