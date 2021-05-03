#!/bin/bash

grep -i 'google' test.txt | awk '{print$7}'
