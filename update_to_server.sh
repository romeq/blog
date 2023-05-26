#!/usr/bin/env sh
echo "Compiling..."
hugo --quiet
echo "Creating archive..."
tar -cf out.tar public
echo "Uploading archive..."
scp out.tar vps1:/opt/instances/blog/out.tar
echo "Extracting archive..."
ssh vps1 "cd /opt/instances/blog; tar -xf out.tar public/"
