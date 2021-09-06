FROM gitpod/workspace-full
USER gitpod

RUN zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)


