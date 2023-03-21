q.2: Append current date to all log files name which has extension .log.l from a folder
a)	Create files with name abc.log.l, def.log.l , ghi.log.l, jkl.log.l, mno.log.l
- touch abc.log.1  def.log.1  ghi.log.1  jkl.log.1  mno.log.1

b)	Print list of files to rename.
- $ ls *.log.1
abc.log.1  def.log.1  ghi.log.1  jkl.log.1  mno.log.1

c)	Segregate basename and extension of a file
code - 
for file in `ls *.log.1`
do
 	nameOfFile=`echo $file | awk -F. '{print $1}'`;
	echo "Name of file is: " $nameOfFile;
	extoffile=`echo $file | awk -F. '{print $2"."$3}'`;
	echo "Extension of file is: " $extoffile;

done
O/P
$ bash segregate.sh
Name of file is:  abc
Extension of file is:  log.1
Name of file is:  def
Extension of file is:  log.1
Name of file is:  ghi
Extension of file is:  log.1
Name of file is:  jkl
Extension of file is:  log.1
Name of file is:  mno
Extension of file is:  log.1

d)	Print Date Command to show in ddmmyy
-$ date +'%d %m %Y'
19 03 2023

e)	Append Date to the log file name

-touch $echo abc-$(date +"%d%m%Y").log.1

f)	Iterate above steps for all files which has extension .log.l
-code 
 for file in `ls *.log.1`
do
	nameOfFile=`echo $file | awk -F. '{print $1}'`;
	touch $echo $nameOfFile-$(date +"%d%m%Y").log.1
	
done
O/P
$ bash -x loopforappend.sh
++ ls abc.log.1 def.log.1 ghi.log.1 jkl.log.1 mno.log.1
+ for file in `ls *.log.1`
++ echo abc.log.1
++ awk -F. '{print $1}'
+ nameOfFile=abc
++ date +%d%m%Y
+ touch abc-19032023.log.1
+ for file in `ls *.log.1`
++ echo def.log.1
++ awk -F. '{print $1}'
+ nameOfFile=def
++ date +%d%m%Y
+ touch def-19032023.log.1
+ for file in `ls *.log.1`
++ echo ghi.log.1
++ awk -F. '{print $1}'
+ nameOfFile=ghi
++ date +%d%m%Y
+ touch ghi-19032023.log.1
+ for file in `ls *.log.1`
++ echo jkl.log.1
++ awk -F. '{print $1}'
+ nameOfFile=jkl
++ date +%d%m%Y
+ touch jkl-19032023.log.1
+ for file in `ls *.log.1`
++ echo mno.log.1
++ awk -F. '{print $1}'
+ nameOfFile=mno
++ date +%d%m%Y
+ touch mno-19032023.log.1
