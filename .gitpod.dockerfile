FROM gitpod/workspace-full
USER gitpod

RUN curl -sL https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer| bash

RUN ["/bin/bash", "-c", ". /root/.gvm/scripts/gvm && gvm install go1.13 -B"]
RUN ["/bin/bash", "-c", ". /root/.gvm/scripts/gvm && gvm use go1.13"]
