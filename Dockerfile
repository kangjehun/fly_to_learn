FROM ubuntu:22.04

# Set non-interactive frontend to avoid user prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Expose the ports used by the application
EXPOSE 8000
EXPOSE 6006

# Update the package list and install basic tools
RUN apt-get update && apt-get install -y wget gnupg
###
RUN apt-get update && apt-get install -y cmake build-essential git python3 python3-pip
# protobuf for data serialization, HDF5 for managing large data, Boost for portable C++ libraries
RUN apt-get update && apt-get install -y protobuf-compiler libprotobuf-dev libhdf5-dev libboost-all-dev
###

# Cleanup to reduce image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Clone the fly_to_learn repository
RUN git clone https://github.com/kangjehun/fly_to_learn.git fly_to_learn

# Set the working directory
WORKDIR /fly_to_learn

# Create the external directory and clone the rl_tools repository into it
RUN mkdir external && git clone https://github.com/rl-tools/rl-tools.git external/rl_tools

# Navigate back to the fly_to_learn root directory
WORKDIR /fly_to_learn

# Create an initialization script that starts bash
RUN echo "#!/bin/bash" > /init.sh && \
    echo "exec bash" >> /init.sh && \
    chmod +x /init.sh

# Set the entry point to the initialization script
ENTRYPOINT ["/init.sh"]
