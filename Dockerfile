# Use the official Ubuntu base image
FROM ubuntu:latest

# Set the working directory inside the container
WORKDIR /workspace

# Update the package list and install essential packages
RUN apt-get update && apt-get install -y \
    python3.11 \
    python3-pip \
    git

# Set the default Python version to Python 3.11
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1

# Install pip for Python 3.11
RUN python3.11 -m pip install --no-cache-dir --upgrade pip

# Set the default Python version for pip
RUN update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1

# Optionally, you can install additional dependencies or packages here if needed.
RUN apt install -y curl

# Copy paths
COPY . .

# Install the requiered libraries
RUN pip install -r requirements.txt


# Set the entry point for the container (optional)
ENTRYPOINT ["/bin/bash"]


# Set the default command to run when the container starts (optional)
# CMD ["python3"]
