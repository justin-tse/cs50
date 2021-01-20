import time
import random

def main():
    number = random.randint(5, 15)
    # n = int(input("Input the countdown number: "))
    countdown(number)
    print("Happy New Year!")

def countdown(n):
    for i in range(n):
        print(n - i)
        time.sleep(1)

main()