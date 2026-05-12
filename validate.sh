#!/bin/bash

if [ ! -f log.txt ]; then
  echo "log.txt does not exist"
  exit 1
fi

if [ ! -s log.txt ]; then
  echo "log.txt is empty!"
  exit 1
fi

if ! grep -q "$EXPECTED_MESSAGE" log.txt; then
  echo "Expected message not found!"
  exit 1
fi

echo "Validation passed!"

