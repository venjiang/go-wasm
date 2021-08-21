FROM gitpod/workspace-full
USER gitpod

RUN wget https://github.com/tinygo-org/tinygo/releases/download/v0.18.0/tinygo_0.18.0_amd64.deb &&\
    sudo dpkg -i tinygo_0.18.0_amd64.deb &&\
    rm tinygo_0.18.0_amd64.deb &&\
    export PATH=$PATH:/usr/local/tinygo/bin &&\
    tinygo version



