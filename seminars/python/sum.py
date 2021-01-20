# sum = 0

# print("Type ten integers to sum the integers!\n")
# for i in range(10):
#     n = int(input("Enter the " + str(i + 1) + "th number: "))
#     sum += n

# print(sum)

sum = 0

print("Type ten integers to sum the integers!\n")
i = 1
while i <= 10:
    n = int(input("Enter the " + str(i) + "th number: "))
    sum += n
    i += 1

print(sum)
