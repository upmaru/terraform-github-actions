#!/bin/bash

lxc remote add terraform https://"$LXD_ADDR" --password "$LXD_PASSWORD" --accept-certificate
lxc remote switch terraform