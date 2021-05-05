#!/bin/bash

sed -i "s/$(awk '{print$1}' test.txt | sort | uniq -c | sort -n | tail -n 1  | awk '{print$2}')/127.0.0.1/g" test.txt
