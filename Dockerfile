FROM a10g/archlinux-x86_64-distcc
ENV LANG=en_US.UTF-8
RUN ["/usr/bin/mkdir", "/var/distcc"]
ADD ["distcc-init/distcc-init-armv7h.sh", "/usr/bin/"]
ADD ["https://archlinuxarm.org/builder/xtools/x-tools7h.tar.xz", "/tmp/"]
RUN ["/usr/bin/tar", "-vxJf", "/tmp/x-tools7h.tar.xz", "-C", "/var/distcc"]
#RUN pacman -Syu --noconfirm && pacman -S distcc gcc make --noconfirm
ENTRYPOINT ["/usr/bin/distcc-init-armv7h.sh"]
