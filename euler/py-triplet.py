import math, time

start = time.time()
def findTriplet():
    for a in range(1, 1000):
        for b in range(a, 999):
            c = 1000 - (a + b)
            if math.pow(a, 2) + math.pow(b, 2) == math.pow(c, 2):
                solution = a * b * c
                if solution > 0:
                    return solution


triplet = findTriplet()
print(triplet)
duration = time.time() - start
print(duration)
