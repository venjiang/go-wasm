FROM gitpod/workspace-full
USER gitpod

RUN curl -sL https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer| bash

RUN ["/bin/bash", "-c", ". /home/gitpod/.gvm/scripts/gvm && gvm install go1.13 -B"]
RUN ["/bin/bash", "-c", ". /home/gitpod/.gvm/scripts/gvm && gvm use go1.13"]

RUN wget https://github.com/tinygo-org/tinygo/releases/download/v0.18.0/tinygo_0.18.0_amd64.deb && \
    sudo dpkg -i tinygo_0.18.0_amd64.deb && \
    rm tinygo_0.18.0_amd64.deb && \
    export PATH=$PATH:/usr/local/tinygo/bin

