#!/usr/bin/env bash

for i in `cat tpkg.check.cfg`; do
  echo "$i: " && ssh -q $i tpkg -q cdn
done
