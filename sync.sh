#!/bin/bash

set -eu

BASE_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

# Usage: ./sync.sh --profile msetsu --dry

aws s3 sync ./dist/ s3://msetsu-company/ --exclude '*' --include '*.jpg' --include '*.png' --include '*.svg' --cache-control 'max-age=31536000' $@
aws s3 sync ./dist/ s3://msetsu-company/ --exclude '*' --include '*.css' --include '*.mp4' --cache-control 'max-age=31536000' $@
aws s3 sync ./dist/ s3://msetsu-company/ --exclude '*' --include '*.js' --cache-control 'private,max-age=31536000' $@
aws s3 sync ./dist/ s3://msetsu-company/ --exclude '*' --include '*.html' --cache-control 'max-age=600' $@
