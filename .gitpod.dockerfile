FROM gitpod/workspace-full
USER gitpod

RUN ["/bin/bash", "-c", "bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)"] && \
    source /home/gitpod/.gvm/scripts/gvm && \
    gvm install go1.13 -B


