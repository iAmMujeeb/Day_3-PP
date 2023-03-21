Q.3: Check for existing directory if not present create it otherwise remove it.
a)	Test if particular folder exists in current directory or not
-code 
if [ -d "$DIRECTORY" ]
	then
  		echo "$DIRECTORY does exist."
	else
		echo "$DIRECTORY doesn't exist."
fi
O/P 
$ bash -x folderpresent.sh
+ '[' -d '' ']'
+ echo ' doesn'\''t exist.'
 doesn't exist.

b)	If its doesn't exists then create it else print "folder already exists.."
-code 
if [ -d "$DIRECTORY" ]
	then
  		echo "$DIRECTORY does exist."
	else
		echo "$DIRECTORY doesn't exist."
            mkdir abc
fi
O/P
$ bash -x folderpresent.sh
+ '[' -d '' ']'
+ echo ' doesn'\''t exist.'
 doesn't exist.
+ mkdir abc
