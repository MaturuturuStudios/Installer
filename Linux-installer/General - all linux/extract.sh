#!/bin/bash
FILE_MARKER=`awk '/^TAR FILE:/ { print NR + 1; exit 0; }' $0`
TMP_DIR=`mktemp -d /tmp/self-extract-bash.XXXXXX`
FILE_DIR=`pwd`

# Extract the file using pipe
tail -n+$FILE_MARKER $0 | base64 -d | tar -zx -C $TMP_DIR

cd $TMP_DIR
echo "Execute..."
# Run the setup script
./setup.sh

# Remove the self-extracting script and the temp directory
rm -rf $FILE_DIR/$0 $TMP_DIR
exit 0

#TAR File Marker
TAR FILE:
