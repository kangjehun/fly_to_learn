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

# Native installation
### Clone this repository :
'''
git clone --recursive https://github.com/kangjehun/fly_to_learn.git
cd fly_to_learn
'''
### Install dependencies on Ubuntu
'''
sudo apt update && sudo apt install libhdf5-dev libopenblas-dev protobuf-compiler libprotobuf-dev libboost-all-dev
'''
As an alternative to openblas you can also install [Intel MKL](https://www.intel.com/content/www/us/en/developer/tools/oneapi/onemkl-download.html) which in our experience is significantly faster than OpenBLAS. [1](https://github.com/arplaboratory/learning-to-fly?tab=readme-ov-file#install-dependencies-on-ubuntu)
'''
wget -O- https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB | gpg --dearmor | sudo tee /usr/share/keyrings/oneapi-archive-keyring.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/oneapi-archive-keyring.gpg] https://apt.repos.intel.com/oneapi all main" | sudo tee /etc/apt/sources.list.d/oneAPI.list
sudo apt-get update && sudo apt-get install -y intel-oneapi-mkl-devel-2023.1.0
'''

### Build
We can now configure the build of the code:
'''
mkdir build
cd build
'''
- Ubuntu + OpenBLAS: `cmake .. -DCMAKE_BUILD_TYPE=Release -DRL_TOOLS_BACKEND_ENABLE_OPENBLAS:BOOL=ON`
- Ubuntu + MKL: `cmake .. -DCMAKE_BUILD_TYPE=Release -DRL_TOOLS_BACKEND_ENABLE_MKL:BOOL=ON`

Finally, we can build the targets:
'''
cmake --build -j$(nproc)
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

# Learning to Fly in seconds
This repository is dedicated to the code review of "Learning to Fly in Seconds."  
https://github.com/arplaboratory/learning-to-fly  

# Automatic Code Review
This repository utilizes ChatGPT-CodeReview for automated code reviews.   
For more information, please visit:  
https://github.com/anc95/ChatGPT-CodeReview?tab=readme-ov-file  
