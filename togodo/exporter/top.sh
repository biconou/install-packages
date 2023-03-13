#!/bin/bash
z=$(ps aux)
while read -r z
do
   var=$var$(awk '{print "cpu_usage{process=\""$11"\", pid=\""$2"\"}", $3z}');
done <<< "$z"
echo ${var} > toto