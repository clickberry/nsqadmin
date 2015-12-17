#!/bin/sh
set -e

# set env variables
if [ -z "$NSQLOOKUPD_ADDRESS1" ]; then
  echo "NSQLOOKUPD_ADDRESS1 environment variable required"
  exit 1
fi

if [ -z "$NSQLOOKUPD_ADDRESS2" ]; then
  echo "NSQLOOKUPD_ADDRESS2 environment variable required"
  exit 1
fi

exec nsqadmin "$@" "--lookupd-http-address=${NSQLOOKUPD_ADDRESS1}" "--lookupd-http-address=${NSQLOOKUPD_ADDRESS2}"
