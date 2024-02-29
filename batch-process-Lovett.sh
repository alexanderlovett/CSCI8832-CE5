#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    WRDS="$(wc -w "${f}" | cut -d' ' -f1)"
    echo "Processing $f file..."
    echo "File size: $SIZE"
    echo "Word count: $WRDS" 
  fi
done

