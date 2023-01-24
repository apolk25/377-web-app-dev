
# find greatest common divisor
def getGCD(curNum, i):
    if i == 0:
        return curNum
    return getGCD(i, curNum % i)

# find least common multiple
def getLCM(curNum, i):
    # lcm formula : a * b / gcd(a, b)
    return curNum * i // getGCD(curNum, i)

curNum = 1
for i in range(2, 21):
    curNum = getLCM(curNum, i)

print(curNum)
