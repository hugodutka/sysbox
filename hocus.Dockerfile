FROM hocusdev/workspace:latest

# install golang
RUN wget https://go.dev/dl/go1.20.4.linux-amd64.tar.gz && \
    sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.20.4.linux-amd64.tar.gz && \
    rm -f go1.20.4.linux-amd64.tar.gz && \
    echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc && \
    echo 'export PATH=$PATH:/home/hocus/go/bin' >> ~/.bashrc && \
RUN sudo apt install protobuf-compiler libseccomp-dev -y
RUN sudo apt install iproute2 -y
