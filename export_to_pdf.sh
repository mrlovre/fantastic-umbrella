#!/bin/bash
for file in $(ls src/*.mscx); do mscore -S styles/default.mss -o pdf/$(basename $file .mscx).pdf $file; done
