
Launch jupyter lab with specific Python Version via Docker
[Instruction](https://thacoon.com/posts/launch-jupyter-lab-from-docker/)

To remove containers:
`docker container prune`

To remove images:
`docker image prune`

To remove images:
`docker volume prune`

To build an image:
`sudo docker build -t jupyter-lab .`
`sudo docker run -it --name jupyter -p 8888:8888 -v "{your_path_here}:/home/lab" jupyter-lab`

