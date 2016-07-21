#!/bin/bash
tar -pczvf files.tar.gz file_maturuturu/ setup.sh
#encode
(cat files.tar.gz | base64) > encoded
cat extract.sh encoded > installer.sh # <- Name of your self-extracting script
chmod +x installer.sh