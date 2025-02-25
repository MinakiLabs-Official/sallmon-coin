#!/bin/sh

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

SALLMOND=${SALLMOND:-$SRCDIR/sallmond}
SALLMONCLI=${SALLMONCLI:-$SRCDIR/sallmon-cli}
SALLMONTX=${SALLMONTX:-$SRCDIR/sallmon-tx}
SALLMONQT=${SALLMONQT:-$SRCDIR/qt/sallmon-qt}

[ ! -x $SALLMOND ] && echo "$SALLMOND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
RVNVER=($($SALLMONCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for sallmond if --version-string is not set,
# but has different outcomes for sallmon-qt and sallmon-cli.
echo "[COPYRIGHT]" > footer.h2m
$SALLMOND --version | sed -n '1!p' >> footer.h2m

for cmd in $SALLMOND $SALLMONCLI $SALLMONTX $SALLMONQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${RVNVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${RVNVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
