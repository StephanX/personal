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