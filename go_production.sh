#!/usr/bin/env bash
set -e

echo 'Build'
bundle exec middleman build --clean

echo 'Upload to server'
rsync --rsh="/usr/bin/ssh" \
      --times \
      ./build/index.html \
      ubuntu@api.wealth-park.com:/home/ubuntu/wealthpark-api/server/public/endpoint
rsync --rsh="/usr/bin/ssh" \
      --times \
      ./build/fonts/* \
      ubuntu@api.wealth-park.com:/home/ubuntu/wealthpark-api/server/public/fonts
rsync --rsh="/usr/bin/ssh" \
      --times \
      ./build/images/* \
      ubuntu@api.wealth-park.com:/home/ubuntu/wealthpark-api/server/public/images
rsync --rsh="/usr/bin/ssh" \
      --times \
      ./build/javascripts/* \
      ubuntu@api.wealth-park.com:/home/ubuntu/wealthpark-api/server/public/javascripts
rsync --rsh="/usr/bin/ssh" \
      --times \
      ./build/stylesheets/* \
      ubuntu@api.wealth-park.com:/home/ubuntu/wealthpark-api/server/public/stylesheets

echo 'DONE'