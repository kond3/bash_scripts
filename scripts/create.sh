#!/bin/bash

# Description
# Simple BASH script to insert the shabang and a default description for scripts.

# Usage
# create.sh <file-to-describe>

echo "#!/bin/bash" >> $1
echo "" >> $1
echo "# Author: $(whoami)" >> $1
echo "# Date: $(date +%d/%m/%Y)" >> $1
echo "# Last modified: $(date +%m/%d/%Y\ %H:%M:%S)" >> $1
echo "" >> $1
echo "# Description" >> $1
echo "# " >> $1
echo "" >> $1
echo "# Usage" >> $1
echo "# ./${1}" >> $1
echo "" >> $1
echo "function nl() {" >> $1
echo "for i in {1..\$1};do" >> $1
echo "      echo \"\"" >> $1
echo "  done" >> $1
echo "}" >> $1
echo "" >> $1
echo 'nl 1' >> $1
echo "" >> $1
echo "" >> $1
echo "" >> $1
echo 'nl 1' >> $1
echo "exit 0" >> $1

chmod 744 $1
nano $1
