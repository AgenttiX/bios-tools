#!/bin/sh
# https://stackoverflow.com/questions/1695819/pass-bash-script-parameters-to-sub-process-unchanged
exec wine /tools/intelmicrocodelist.exe "$@"
