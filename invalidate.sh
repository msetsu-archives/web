#!/bin/sh

set -eu

BASE_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

aws cloudfront create-invalidation --distribution-id E8S2UQVKL9R5L --paths '/company/index.html' $@
