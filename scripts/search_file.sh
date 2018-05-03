#!/bin/bash
# Tema 4 parte 3 ejercicio 41

# Implement a script that can only be executed by the root user
# and receive an input parameter, the name of a directory ($1).
# Another parameter will be optional, the name of a file ($2).

# The script will check if the user that has executed it is the root,
# that has received a parameter and that that parameter is a directory.
# If some of this is not fulfilled, it will give a descriptive warning of what is not fulfilled and will be closed.
# If everything is correct, the following menu will be displayed:

# File finder in $1
# =============================================
# 1. By file name (An X string will be requested and the
# files containing the X in your file name. Does not have
# why there is an exact match)
# 2. By extension.
# 3. Per user (We assume and trust that they indicate a valid user).
# 4. By modification date (A number of days X will be requested and
# will look for files modified in the last X days).
# 5. By size in k (included between two values.) Two will be requested
# sizes, minimum and maximum in k and files will be searched
# that has a size between those specified).
# 0. Exit.
#The script will iteratively display the menu until the user indicates the option to exit.

# The script will do the specified search within the given directory ($ 1). The results are
# will show on the screen.

# If the user has optionally indicated the name of a file as a parameter of
# entry ($ 2), the results will be displayed on the screen and stored in the file
# indicated. The file will only contain the results of the last search. Right before
# the results will indicate the following text: "Search results by ...". By
# example, "Search results by jpg extension" or "Search results by
# modification date last 10 days. "

# If necessary omit the errors for non-allowed access (although there should not be).

clear

function showMenu () {
	echo "File finder in $1"
	echo "======================="
	echo "1. By file name (An X string will be requested and files containing the X will be searched in their file name.
	    There does not have to be an exact match). "
	echo "2. By extension."
	echo "3. Per user (We assume and trust that they indicate a valid user)."
	echo "4. By modification date (A number of X days will be requested and files modified in the last X days will be searched)."
	echo "5. By size in k (included between two values.) Two sizes, the minimum and the maximum in k, will be requested and the files will be searched
			which has a size between those specified). "
	echo "0. Exit."
}

function searchForFileName () {
	path="$1/"
	echo $route
	echo "Enter a file name to search"
	read file
	echo "Results of the search by file name"

	find $path -type f -name "$file"

	read pause
}

function searchPorExtension () {
	path = "$ 1 /"
	echo $route
	echo "Enter a file extension to search"
	read extension
	echo "Results of the search by extension"

	find /home/profesoru -type f -iname "*. $extension"

	read pause
}

function searchPerUser () {
	path="$1/"
	echo $route
	echo "Enter a user"
	read user
	echo "Search results by user"

	find /home/profesoru -type d -user $user

	read pause

}
function searchForDataModification () {
	path="$1/"
	echo $route
	echo "Enter a number of modification days"
	read days
	echo "Results of the search by modification date"

	find /home/profesoru -type f -ctime + $dias

	read pause
}

function searchPorTamano () {
	path="$1/"
	echo $route
	echo "Enter a minimum size"
	read min
	echo "Enter a maximum size"
	read max
	echo "Results of the search size"

	find /home/profesoru -type f -size + "$maxk" -size - "$mink"

	read pause

}

if [ $UID -ne 0 ]
then
	echo "Error, you must be root to execute it"
	exit 1
fi

if [ $# -lt 1 ]
then
	echo "Error, you must enter a minimum parameter"
	exit 1
elif [ ! -d $1 ]
then
	echo "Error. $1 Not a directive"
	exit 1
fi

directory=$1
if [ $# -eq 2 ]
then
	file = $ 2
else
	file = "";
fi

option = -1
while [ $option -ne 0 ]
do
	showMenu
	read option
	case $option in
		1)
			searchForNameFile $directory $file
		;;
		2)
			searchByExtension $directory
		;;
		3)
			searchPerUser $directory
		;;
		4)
			searchForDataModification $directory
		;;
		5)
			searchForTamano $directory
		;;
		0)
			echo "Leaving ..."
			exit 0
		;;
		*)
			echo "Option invalidates"
		;;
	esac
done

exit 0
