
file = open('data.dat', 'r')
lines = file.readlines()

total = 0
for line in lines:
    total += int(line)

total = str(total)
print(total[:10])