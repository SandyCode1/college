#!/bin/bash
set -e
if [ ! -f index.html ]; then
  echo "index.html not found"
  exit 1
fi

# Check for expected text (you can intentionally change this to demonstrate failure)
grep -q "LIVE" index.html || { echo "Expected string LIVE not found"; exit 1; }

echo "Tests passed"
