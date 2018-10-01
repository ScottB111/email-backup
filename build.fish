#!/usr/bin/env fish

docker build -t ddbeck/emailbackup:(git rev-parse HEAD) -t ddbeck/emailbackup:latest .
