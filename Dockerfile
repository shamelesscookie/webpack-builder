FROM node:14-stretch-slim

RUN  \
  apt update && \
  apt upgrade -y && \
  apt install -y python-pip libgl1 libxi6 && \
  pip install awscli && \
  npm install --global aws-cdk && \
  rm -rf /var/lib/apt/lists/*