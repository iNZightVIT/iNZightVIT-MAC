#!/bin/sh

# Need to find out where we are currently running from
export R_DIR="`dirname \"$0\"`"
# Need to tell R where to look for code to automatically
# execute upon startup
export DYLD_FALLBACK_FRAMEWORK_PATH="$R_DIR/Library"
export DYLD_FRAMEWORK_PATH="$R_DIR/Library/Frameworks/R.framework"
export DYLD_LIBRARY_PATH="$R_DIR/Library/Frameworks/R.framework/Versions/2.15/Resources/lib"

cd "$R_DIR"
R --slave  # run in terminal window so it remains in the background