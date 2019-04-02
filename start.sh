#!/bin/bash
echo '메롱'
source /etc/profile.d/rvm.sh && rvm use 2.6.1 && bin/rails server --port 3000 --binding 0.0.0.0
