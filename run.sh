#!/bin/bash -i
set -m

roscore & (sleep 10 && talk & (sleep 10 && listen))