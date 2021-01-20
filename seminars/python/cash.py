QUARTERS = 25
DIMES = 10
NICKELS = 5
PENNIES = 1

while True:
    n = float(input("Change owed: "))
    if n > 0:
        break

n = round(n * 100)

count = 0
while n > 0:
    if n - QUARTERS >= 0:
        n -= QUARTERS
        count += 1
    elif n - DIMES >= 0:
        n -= DIMES
        count += 1
    elif n - NICKELS >= 0:
        n -= NICKELS
        count += 1
    else:
        n -= PENNIES
        count += 1

print(count)