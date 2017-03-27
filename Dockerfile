FROM node:6.6

RUN mkdir /work
ADD . /work
ENV MATTERMOST_ENDPOINT /hubot/incoming
ENV MATTERMOST_CHANNEL town-square
ENV MATTERMOST_INCOME_URL http://192.168.99.100:8065/hooks/7jk94umckbfeice6ng5gu71fie
ENV MATTERMOST_TOKEN y1a5hwy1zf8qfjupbmin3nrx5w
ENV MATTERMOST_ICON_URL https://s3-eu-west-1.amazonaws.com/renanvicente/toy13.png
ENV MATTERMOST_HUBOT_USERNAME "matterbot"
ENV MATTERMOST_SELFSIGNED_CERT true
WORKDIR /work
CMD ./bin/hubot --name matterbot  -a mattermost
