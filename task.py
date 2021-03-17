from sys import argv


with open(argv[1]) as fp:
    first_line = True
    score = 0
    for line in fp:
        if first_line:
            first_line = False
        else:
            score += int(line.split(",")[-1])
    print(score)
