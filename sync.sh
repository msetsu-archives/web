#!/bin/bash

# Usage: ./sync.sh --profile msetsu --dry

aws s3 sync ./public/ s3://msetsu-company/ --exclude '*' --include '*.jpg' --include '*.png' --include '*.svg' --cache-control 'max-age=86400' $@
aws s3 sync ./public/ s3://msetsu-company/ --exclude '*' --include '*.css' --cache-control 'max-age=86400' $@
aws s3 sync ./public/ s3://msetsu-company/ --exclude '*' --include '*.js' --cache-control 'private,max-age=86400' $@
aws s3 sync ./public/ s3://msetsu-company/ --exclude '*' --include '*.html' --cache-control 'max-age=600' $@
