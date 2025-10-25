#!/bin/sh
set -e

. ./atlantis.var

./atlantis server \
--gh-user="$USERNAME" \
--gh-token="$TOKEN" \
--gh-webhook-secret="$SECRET" \
--repo-allowlist="$REPO_ALLOWLIST" \
--atlantis-url="$URL" 