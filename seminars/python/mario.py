while True:
    n = int(input("n: "))
    if 0 < n <= 8:
        break
    print("Input number between 1 and 8.")

for i in range(n):
    print( (n - i - 1) * " " + "#" * (i + 1))