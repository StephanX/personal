#!/bin/bash
OLD=`stat -c %Z file_name`; NOW=`date +%s`; (( DIFF = (NOW - OLD)/60 )) ; echo "This file is $DIFF m old"