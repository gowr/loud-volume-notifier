#!/bin/bash
VOLUME=`arecord -qd 2 /tmp/volume/volt && sox /tmp/volume/volt -n stat &> /tmp/volume/volt.d && sed '4q;d' /tmp/volume/volt.d | awk '{print $3}'`
echo "$VOLUME"