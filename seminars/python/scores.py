def main():
    score1 = int(input("Score 1: "))
    score2 = int(input("Score 2: "))
    score3 = int(input("Score 3: "))

    print_score(score1)
    print_score(score2)
    print_score(score3)

    # score = int(input("Score: "))
    # for i in range(score):
    #     print("#", end="")
    # print()

def print_score(n):
    for i in range(n):
        print("#", end="")
    print()

main()