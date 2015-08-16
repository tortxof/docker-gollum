# docker-gollum

From the root of an existing git repo, run a new container.

    docker run -d --restart always -u $(id -u):$(id -g) -v $(pwd):/data -p 8000:4567 tortxof/gollum
