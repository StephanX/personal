#!/bin/bash

function usage {
  echo "Usage: $0 -h host -u user -p password -w <warn> -c <crit>"
  echo
  exit 1
}

while test -n "$1"; do
    case "$1" in
	-h)
            host=$2
            shift
            ;;
        -u)
            user=$2
            shift
            ;;
        -p)
            pass=$2
            shift
            ;;
        -w)
            warn=$2
            shift
            ;;
        -c)
            crit=$2
            shift
            ;;
        -a)
            alias=$2
            shift
            ;;
        --help | *)
            usage
	    ;;
    esac
    shift
done
[[ ! $host || ! $user || ! $pass || ! $warn || ! $crit ]] && usage

