#!/bin/sh -l
distributionIds=$1
echo "Starting invalidation of $distributionIds"
for id in $distributionIds; do
  echo "Invalidating $id"
  aws cloudfront create-invalidation --distribution-id "$id" --paths "/*" | cat
  echo "Invalidation of $id successfully registered"
done
