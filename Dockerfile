FROM node:6.9.1

RUN apt-get update && apt-get install unzip python-pip python-dev build-essential -y

RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN chmod +x ./awscli-bundle/install
RUN ./awscli-bundle/install -b ~/bin/aws

RUN wget https://github.com/silinternational/ecs-deploy/archive/2.3.1.tar.gz
RUN tar -xzf 2.3.1.tar.gz
RUN chmod +x ecs-deploy-2.3.1/ecs-deploy