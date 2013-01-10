#!/bin/bash

confirmation()
{
    echo "Do you want to proceed?"
    read answer
    if [ "${answer}" == "y" ] ; then
	echo "... proceeding ..."
    else
	echo "Aborting."
	exit 0
    fi
}

another_confirmation()

read -r -p "Are you sure? [Y/n] " response
case $response in
    [yY][eE][sS]|[yY])
        do_something
        ;;
    *)
        do_something_else
        ;;
esac