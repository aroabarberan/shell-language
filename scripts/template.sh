#!/bin/bash
#! / bin / bash
# Template to create the exercises of topic 4 part 3 annex 1.

clear
#echo -n "Title of the exercise";
#read exercise;

file=$1;
touch $file;
chmod +x $file;

echo "#!/bin/bash" >> $file;
echo "# Topic 4 part 3 exercise $1" >> $file;
echo "" >> $file;
echo "clear" >> $file;
echo "" >> $file;
echo "" >> $file;
echo "exit 0" >> $file;

geany $file;
exit 0

