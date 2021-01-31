# Linux
### Command Line
### Basic Commands
- ~ / $  $ is just the seperate 
cs /


- rmdir  remove the empty folad

- ls /

- contrl + d
- change 从横向变为竖向
- ls / > root_list 
- cat root_list      cat [short for “concatenate“] 
- cat > welcome
- >  
添加
- cat >> welcome
- >>
后续加上 

- cat or cat files name
- cat < files name

- cat < welcome > welcome1

- cat test
hi

- cat welcome test

- cp welcome welcome2

- cat welcome2

- rm filename

- rm -f filename

- rm --help

- man rm
- and then rm --help
- man man
- man -s 1 -k remove
k keyword :remove
1 section
s ??

I really recommend anything related to Raspberry Pi,  it's a fun way to get comfortable with Linux. It helped me a lot when I was starting out. :)

@sonia_pena you can also enroll in edx in "introduction to Linux" of Linux foundation

```shell
~/activity0/ $ wc
foo bar
baz
qux
      3       4      16
~/activity0/ $ 
```

```shell
~/activity0/ $ wc -l
foo bar
baz
qux
3
~/activity0/ $ 
```

- cat welcome | wc -l

- wget + url

- cat filename

- less filename            
oneline -> j k   
one page =>  space b 
Top => g
Eng => shift g
/ the seacch
jump search => n    shift + n

-i
Ignore case in searches

- q

- cat seminars/linux/welcome | less
- wc -l shows.csv
- head shows.csv
- tail shows.csv
- tail -n 28 shows.csv

- cat shows.csv | head

- cut -d , -f 1 shows.csv
-d , means seperate by ,
-f 1 means the 1th coloum
- cut -d , -f 1,2 shows.csv

- cut -d , -f 1 shows.csv | head

- cut -d '  ' -f 1 shows.tsv

sort shows.csv
sort -n shows.csv

sort -n shows.csv |  head -n 10

> always writes to a file, and | always passes to another function

grep
```shell
~/seminars/linux/ $ grep 'Friends' shows.csv
108778,Friends,1994,235,8.9,792282
~/seminars/linux/ $ grep 'friends' shows.csv                           
~/seminars/linux/ $ grep -i 'friends' shows.csv                        
108778,Friends,1994,235,8.9,792282

~/seminars/linux/ $ grep -i 'game of thrones' shows.csv
944947,Game of Thrones,2011,73,9.3,1714621


~/seminars/linux/ $ grep -i 'game' shows.csv
944947,Game of Thrones,2011,73,9.3,1714621
6077448,Sacred Games,2018,16,8.7,70573
```

可以用正则表达式
```shell
~/seminars/linux/ $ grep '^28' shows.csv
285331,24,2001,195,8.3,169152
285351,According to Jim,2001,182,6.4,33781
285333,Alias,2001,105,7.6,44678
2891574,Ballers,2015,47,7.6,37250
280249,Dragon Ball,1995,153,8.5,52041
2802850,Fargo,2014,41,8.9,312941
2861424,Rick and Morty,2013,45,9.2,357806
285403,Scrubs,2001,182,8.3,233563
286486,The Shield,2002,89,8.7,70559
```
man grep

grep -i sein shows.csv

```
~/seminars/linux/ $ grep -i sein shows.csv
98904,Seinfled,1989,172,8.8,248516
```


sed 's/Seinfled/Seinfeld' shows.csv | grep -i sein
```
~/seminars/linux/ $ sed 's/Seinfled/Seinfeld/' shows.csv | grep -i sein98904,Seinfeld,1989,172,8.8,248516
~/seminars/linux/ $ sed 's/Seinfled/Seinfeld/' shows.csv > shows_fixed.csv

grep -i sein shows_fixed.csv

```


sed -i 's/Deinfled/Seinfeld/' shows.csv
grep -i sein shows.csv

alias igrep='grep -i'
igrep sein shows.csv


history
history | head

~/seminars/linux/ $ history | igrep ca

find /usr -name 'cs50.py'
find /usr -name 'cs50*'

```shell
~/seminars/linux/ $ find /usr -name 'cs50*'
/usr/include/cs50.h
/usr/local/lib/python3.9/site-packages/cs50
/usr/local/lib/python3.9/site-packages/cs50/__pycache__/cs50.cpython-39.pyc
/usr/local/lib/python3.9/site-packages/cs50/cs50.py
/usr/local/lib/python3.9/site-packages/cs50-6.0.2-py3.9.egg-info
/usr/share/java/cs50.jar
/usr/src/cs50.c
~/seminars/linux/ $ find /usr -name 'cs50*' | head -n 3
/usr/include/cs50.h
/usr/local/lib/python3.9/site-packages/cs50
/usr/local/lib/python3.9/site-packages/cs50/__pycache__/cs50.cpython-39.pyc
```

find ~/ -name 'cs50*'
find / -name 'cs50*'


1.Create a directory called “activity1” in your home directory (~)
2.Change your current directory to your “activity1” directory
3.Download https://cdn.cs50.net/2021/x/seminars/linux/shows.csv
4.Using a pipe, print the year “Mr. Robot” aired on standard out
grep 'Mr. Robot' shows.csv | cut -d , -f 3
```shell
~/activity1/ $ grep 'Mr. Robot' shows.csv
4158110,Mr. Robot,2015,46,8.6,323092
~/activity1/ $ grep 'Mr. Robot' shows.csv | cut -d , -f 3
2015
```

5.Where does “libcs50.a” live in /usr?
~/activity1/ $ find  /usr -name 'libcs50.a'
/usr/lib/libcs50.a
```shell
find  /usr -name 'libcs50.a'
```







## class

cd /
cd ..
ls
cd /home (or cd ./home, or cd home)
ls
cd ubuntu
pwd
ls



touch foo
ls
mkdir seminar
ls
mv foo seminar
ls
ls seminar
cd seminar
ls
mv foo welcome


ls / > root_list
ls
cat
cat > welcome
hello
(ctrl + d)
cat welcome
cat > welcome
welcome to a taste of linux!
(ctrl + d)
cat welcome
cat >> welcome
thank you for joining!
(ctrl + d)
cat welcome
cat < welcome
cat < welcome > welcome1

ls
cat welcome1
cp welcome welcome2
cat welcome2
rm welcome1
ls
rm -f welcome2
rm --help (or rm -h)
man rm
(press q to quit)
man -s 1 -k remove


*Activity 0*


wc
foo bar
baz
qux
(ctrl + d)

wc -l
foo bar
baz
qux
(ctrl + d)

cat welcome | wc -l

wget https://cdn.cs50.net/2021/x/seminars/linux/shows.csv
cat shows.csv
less shows.csv
j (or Enter) to go to next line
k to go to previous line
space bar to go to next page
b to go to previous page
g to go to the top of the file
shift g to go to bottom of the file
/the to search for the
n to jump to next finding
shift n to jump to previous finding
-i to toggle case-sensitive search
q to exit



head shows.csv
head -n 28 shows.csv
tail shows.csv
tail -n 28 shows.csv
wc -l shows.csv



cut -d, -f2 shows.csv
cut -d, -f2,3 shows.csv



sort shows.csv
sort -n shows.csv
less shows.csv
sort -n shows.csv > shows_sorted.csv
less shows_sorted.csv



grep friends shows.csv
grep -i friends shows.csv
grep -i ‘game of thrones’ shows.csv
grep -i of shows.csv
grep -i ‘^28’ shows.csv
grep -i sein shows.csv
sed ‘s/Seinfled/Seinfeld/’ shows.csv
grep -i sein shows.csv
sed -i ‘s/Seinfled/Seinfeld/’ shows.csv
grep -i sein shows.csv


alias igrep=’grep -i’
igrep sein shows.csv
history


find /usr -name ‘cs50*’

*Activity 1*

