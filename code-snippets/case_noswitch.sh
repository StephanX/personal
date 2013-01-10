#!/bin/bash

show_usage()
{
    echo "Usage: `basename $0` (api|db|memcached|mongo|other|redis|sqredis|twittermine|web|worker|sqworker|chefserver|highio|icinga) [hostname] [-num]    # -num: no-update-monitoring"
    exit 1
}

for arg in "$@" ; do
  case "$arg" in
    -num)
      NO_UPDATE_MONITORING=1
      shift
      ;;
    -*)
      show_usage
      ;;
    *)
      if [[ -z "$HOSTTYPE" ]] ; then
        HOSTTYPE=$arg
      elif [[ -z "$HOSTNAME" ]] ; then
        HOSTNAME=$arg
      else
        show_usage
      fi
      shift
      ;;
  esac
done
if [[ -z $HOSTTYPE ]] ; then
  show_usage
fi