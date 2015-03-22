#!/bin/bash
cat words.txt | tr '\n' ' ' | sed "s/\s\s*/ /g" | awk -v RS=' ' '{print $0}' | sort | uniq -c | sort -nr -k2,1 | awk '{print $2" "$1}'
