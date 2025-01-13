#!/bin/sh
###############################################################################
# A script to determine the network quality of the Mac's Internet connection. #
###############################################################################

netqual=$(/usr/bin/awk '/Interface:/{print $2}' /var/log/netQualOut.txt | tail -1)
echo "<result>${netqual}</result>"
