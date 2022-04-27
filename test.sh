#!/bin/bash

numOfChanges=$({ git diff --name-only HEAD^ HEAD ../common; git diff --name-only HEAD^ HEAD; } | wc -l)

echo "Number of Changes:"
echo $numOfChanges

if (( numOfChanges > 0 )) ; then
  # Proceed with the build
  echo "✅ - Build can proceed"
  exit 1;

else
  # Don't build
  echo "🛑 - Build cancelled"
  exit 0;
fi