#!/bin/bash

# Check if an argument was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <hex_string>"
  exit 1
fi

# Use xxd to convert the hex string to ASCII
# -r: reverses the operation (hex to plain text)
# -p: treats the input as a plain hex string without a line number
echo "$1" | xxd -r -p 
echo ""