#!/usr/bin/env bash
set -e

echo 'Stop server'
forever stop slate || true

echo 'Start server'
forever                                     \
  --command node                            \
  --uid slate                               \
  --workingDir `pwd`                        \
  --append                                  \
  start                                     \
  `which http-server` public -p 45678
