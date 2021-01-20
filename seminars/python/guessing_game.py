import random
n = random.randint(1,10)

for i in range(3):
    guess = int(input("What's your guess number: "))
    if guess == n:
        print("You won!! The number is: " + str(guess))
        break
    else:
        print("Please try again")

print("You lose! Please try to guess again!")