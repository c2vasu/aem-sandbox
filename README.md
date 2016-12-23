# aem-sandbox
Adobe Experince Manager Sandbox

### This Docker image installs [Adobe Experience Manager 6.0](http://docs.adobe.com/docs/en/aem/6-0.html)
Allows it to be run within a Docker container.
```
Build docker image
$ docker build --tag="image_name:tag_name" .
$ docker build --tag="c2vasu/aem:6.0" .

To get the ID of the container
$ docker images

To run the container
$ docker run image_name:tag_name
$ docker run --name author -i -d -p 4502:4502 c2vasu/aem:6.0

To save the state of the container
$ docker commit container_id image_name:tag_name
$ docker commit 12c814b0f214 c2vasu/aem:6.0

Loing in to Docker hub to register the container.
$ docker login

Push container to docker hub.
docker push c2vasu/aem
```
