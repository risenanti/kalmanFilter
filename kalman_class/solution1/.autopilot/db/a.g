#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/keith/Documents/github/kalmanFilter/kalman_class/solution1/.autopilot/db/a.g.bc ${1+"$@"}
