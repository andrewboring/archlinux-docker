#!/usr/bin/env bash
PATH=/var/distcc/x-tools6h/aarch64-unknown-linux-gnu/bin:/usr/bin 
/usr/bin/distccd --user nobody --allow 127.0.0.1 --no-detach --daemon --log-stderr --listen 127.0.0.1 --port 3932 --stats-port 3933
