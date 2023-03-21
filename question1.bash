Q.1: Moving Files
a)	Create files in current directory or any temporary directory - abc.txt, def.txt, ghi.txt, jkl.txt.
- touch abc.txt def.txt ghi.txt jkl.txt

b)	Print list of files to move.
- ls
abc.txt,  def.txt,  ghi.txt,  jkl.txt

c)	Segregate basename and extension of a file.
- code
  for file in `ls *.txt`
do
 	nameOfFile=`echo $file | awk -F. '{print $1}'`;
	echo "Name of file is: " $nameOfFile;
	extoffile=`echo $file | awk -F. '{print $2}'`;
	echo "Extension of file is: " $extoffile;

done
-O/P
$ bash segregate.sh
Name of file is:  abc
Extension of file is:  txt
Name of file is:  def
Extension of file is:  txt
Name of file is:  ghi
Extension of file is:  txt
Name of file is:  jkl
Extension of file is:  txt

d)	Create folder using basename.  
- code
  for file in `ls *.txt`
do
	nameOfFile=`echo $file | awk -F. '{print $1}'`;
	mkdir $nameOfFile;

done
O/P
$ bash creatingfile.sh

saifi@Mujeeb MINGW64 ~/Documents/Bridgelabz/Day 3 PP
$ ls
abc/  abc.txt   def/  def.txt  ghi/  ghi.txt  jkl/  jkl.txt  
