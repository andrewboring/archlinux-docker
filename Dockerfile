FROM a10g/archlinux-x86_64-base
ENV LANG=en_US.UTF-8
RUN pacman -Syu --noconfirm && pacman -S distcc gcc make --noconfirm
ENTRYPOINT ["/usr/bin/bash"]
