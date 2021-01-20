[Python](https://cs50.harvard.edu/x/2021/seminars/)
=====
- print("#", end="")
```python
for i in range(n):
    for j in range(m):
        print("#", end="")
    print()
```
Which could solve the print method will create blank line in every print.

"" could be any variable
- similer to the c do while
```c
do
{
    n = get_int("Height: ")
}
while (n <= 0 || n >= 8);
```
```python
while True:
    n = int(input("Height: "))
    if !(n <= 0 || n >= 8):
        break  
```
