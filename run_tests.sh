#!/usr/bin/env bash
find algorithms -type f -mindepth 1 | while read -r file; do chmod +x $file; done
find algorithms -type d -mindepth 1 | while read -r file; do cd $file; bats test.bats ; done