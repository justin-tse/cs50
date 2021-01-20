QUARTERS = 25
DIMES = 10
NICKELS = 5
PENNIES = 1

while True:
    n = float(input("Change owed: "))
    if n > 0:
        break
    print("Input must be positive!")

n = round(n * 100)
count = 0
while n > 0:
    if n - QUARTERS >= 0:
        n -= QUARTERS
    elif n - DIMES >= 0:
        n -= DIMES
    elif n - NICKELS >= 0:
        n -= NICKELS
    else:
        n -= PENNIES
    count += 1

print(count)