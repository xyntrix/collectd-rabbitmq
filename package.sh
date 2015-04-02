#!/bin/sh

export FPMPATH="`which fpm`"
if [ $? -ne 0 ]; then
  echo "# ERROR: must install fpm to continue. Try: gem install fpm"
  exit 127
fi

${FPMPATH} 

