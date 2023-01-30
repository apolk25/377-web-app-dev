import math
def getSumOfSquares():
    total = 0
    for i in range(1, 101):
        total += math.pow(i, 2)
    return total

def getSquaredSum():
    total = 0
    for i in range(1, 101):
        total += i
    
    sum = math.pow(total, 2)
    return sum



sumOfSquares = getSumOfSquares()
squaredSum = getSquaredSum()

difference = squaredSum - sumOfSquares
print(int(difference))