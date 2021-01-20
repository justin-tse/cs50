def main():
    multiply(2, 3)
    multiply(2, 4)
    print()

    for i in range(10):
        multiply(2, i)
    print()

    for i in range(10):
        for j in range(10):
             multiply(i, j)

def multiply(x, y):
    product = x * y
    print(x, "*", y, "=", product)

main()