# fly_to_learn
Code Review : Learning to fly in seconds

# Docker installation
First, install Docker on your machine.
Then move to the original directory fly_to_learn and build the docker image:

'''
docker build -t fly_to_learn .
'''

After that you can run it using e.g.:
'''
docker run -it --rm -p 8000:8000 fly_to_learn
'''


# Docker Commands
Basic commands

'''
docker images

docker start [container_name]
docker attach [container_name]

docker ps
docker ps -a

docker stop [container_name]
docker rm -rf [container_name]

'''