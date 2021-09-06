FROM gitpod/workspace-full
USER gitpod


#RUN ["/bin/bash", "-c", "bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)"]
#RUN ["/bin/bash", "-c", ". /home/gitpod/.gvm/scripts/gvm && gvm install go1.13 -B"]
#RUN ["/bin/bash", "-c", ". /home/gitpod/.gvm/scripts/gvm && gvm use go1.13"]

RUN curl -sL https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer| bash

RUN ["/bin/bash", "-c", ". /home/gitpod/.gvm/scripts/gvm && gvm install go1.13 -B"]
RUN ["/bin/bash", "-c", ". /home/gitpod/.gvm/scripts/gvm && gvm use go1.13"]
