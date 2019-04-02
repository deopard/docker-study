#!/bin/bash
echo 'Hello!'
echo $1
source /etc/profile.d/rvm.sh && rvm use 2.6.1 && bin/rails server -e $1 --port 3000 --binding 0.0.0.0
