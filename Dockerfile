FROM scratch
ADD archlinux.tar /
ENV LANG=en_US.UTF-8
EXPOSE 3932/tcp
CMD ["/usr/bin/distcc-init.sh"]
