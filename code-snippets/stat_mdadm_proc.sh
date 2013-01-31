#!/bin/bash
echo
run()
{
running=`cat /proc/mdstat | grep recovery | awk '{ print; $2 = $2 }' | awk '{ print $4 }'`
echo -ne "        $running\r"
}
run
while [[ ! -z $running ]] ; do
run
  sleep 1
done
cat done.txt | sendmail -t
exit 0


#done.txt
#
#to:stephan@140proof.com, indika@140proof.com
#from:root@neo4j1.140proof.com
#subject:I am done with rebuilding the raid.
#
#<EOM>
