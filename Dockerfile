FROM node:18-buster-slim

LABEL version="1.0.8"
LABEL repository="https://github.com/jinfucs/hexo-action"
LABEL homepage="jinfucs.com"
LABEL maintainer="金孚财税 <i_jinfucs@outlook.com>"

COPY entrypoint.sh /entrypoint.sh
COPY sync_deploy_history.js /sync_deploy_history.js

RUN apt-get update > /dev/null && \
    apt-get install -y git openssh-client > /dev/null ; \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]