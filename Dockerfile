FROM node:18-alpine3.16

RUN apk update && apk add curl unzip git

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip && ./aws/install

RUN yarn global add aws-cdk@2.51

WORKDIR /home/node/cdk-tutorial