FROM gitpod/workspace-full
USER gitpod

RUN bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer) <<< ""$'\n'"y"


