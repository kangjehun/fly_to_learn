FROM ubuntu:22.04

# Set non-interactive frontend to avoid user prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Expose the ports used by the application
EXPOSE 8000
EXPOSE 6006

# Update the package list and install necessary libraries
RUN apt-get update && apt-get install -y wget gnupg
RUN apt-get update && apt-get install -y cmake build-essential git python3 python3-pip
# Intel MKL for optimized linear algebra operations
RUN wget -O- https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB \
| gpg --dearmor | tee /usr/share/keyrings/oneapi-archive-keyring.gpg > /dev/null
RUN echo "deb [signed-by=/usr/share/keyrings/oneapi-archive-keyring.gpg] \
https://apt.repos.intel.com/oneapi all main" | tee /etc/apt/sources.list.d/oneAPI.list
# protobuf for data serialization, HDF5 for managing large data, Boost for portable C++ libraries
RUN apt-get update && apt-get install -y intel-oneapi-mkl-devel-2023.1.0
RUN apt-get update && apt-get install -y protobuf-compiler libprotobuf-dev \
libhdf5-dev libboost-all-dev

# Cleanup to reduce image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Clone the fly_to_learn repository
RUN git clone https://github.com/kangjehun/fly_to_learn.git fly_to_learn

# Update the submodules
WORKDIR /fly_to_learn
RUN git submodule update --init -- external/rl_tools
WORKDIR /fly_to_learn/external/rl_tools
RUN git submodule update --init -- external/cli11 external/highfive external/json/ \
external/tensorboard tests/lib/googletest/

WORKDIR /fly_to_learn
WORKDIR /
RUN mkdir build
WORKDIR /build
RUN cmake ../fly_to_learn -DCMAKE_BUILD_TYPE=Release -DRL_TOOLS_BACKEND_ENABLE_MKL:BOOL=ON \
-DRL_TOOLS_DISABLE_CPU_SPECIFIC_OPTIMIZATIONS:BOOL=ON
RUN cmake --build . -j$(nproc)

# Create an initialization script that starts bash
WORKDIR /fly_to_learn
RUN echo "#!/bin/bash" > /init.sh && \
    echo "exec bash" >> /init.sh && \
    chmod +x /init.sh
ENTRYPOINT ["/init.sh"]
