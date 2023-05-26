#!/usr/bin/env sh
hugo --quiet
tar -cf out.tar public
scp out.tar vps1:/opt/instances/blog/out.tar
ssh vps1 "cd /opt/instances/blog; tar -xf out.tar public/"
