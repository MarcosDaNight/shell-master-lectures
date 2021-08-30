#!/usr/bin/env bash

FILE_CONFIG="config.cf"
MESSENGER="Messenger of Test."
USE_UPPERCASE=
USE_COLORS=
RED="\033[31;1m"

eval $(./parser.sh $FILE_CONFIG)

[ "$(echo $CONF_USE_UPPERCASE)" = "1" ] && USE_UPPERCASE=1
[ "$(echo $CONF_USE_COLORS)" = "1" ] && USE_COLORS=1

[ "$USE_UPPERCASE" = "1" ] && MESSENGER="$(echo -e $MESSENGER | tr a-z A-Z)"
[ "$USE_COLORS" = "1" ] && MESSENGER="$(echo -e ${RED}$MESSENGER)"

echo -e "$MESSENGER"
