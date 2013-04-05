#!/bin/sh -e

cd "$(dirname "$0")"

ECUKES_EMACS=${EMACS:-$(which emacs)}

echo "*** Emacs version ***"
echo "ECUKES_EMACS = $ECUKES_EMACS"
"$ECUKES_EMACS" --version
echo

"$ECUKES_EMACS" --batch --no-site-file --eval "(or (ignore-errors (require 'cl-lib)) (package-install 'cl-lib))"

exec ./util/ecukes/ecukes --graphical
