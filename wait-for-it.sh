#!/usr/bin/env bash
# wait-for-it.sh

set -e

host="$1"
shift
cmd="$@"

until nc -z "$host" 3000; do
  >&2 echo "API is unavailable - sleeping"
  sleep 1
done

>&2 echo "API is up - executing command"
exec $cmd