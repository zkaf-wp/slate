#!/usr/bin/env bash
set -e

echo 'Build'
bundle exec middleman build --clean

rm -rf public/docs/api/v1/ja
mkdir -p public/docs/api/v1/ja
cp -r build/* public/docs/api/v1/ja/