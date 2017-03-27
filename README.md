# shellbot

```
docker build -t mbot .
docker run -v /var/run/docker.sock:/var/run/docker.sock -p 8080:8080 -v `pwd`/hack:/work/hack --name matterbot mbot
```
