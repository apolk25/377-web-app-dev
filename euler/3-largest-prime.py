factors = []
number = 600851475143
def primeNumber():
    global factors, number
    while True:
        i = 1
        if len(factors) > 1:
            i = (factors[-1]) - 1
            print(i)
        while i < number:
            i += 1
            if number % i == 0:
                number = number / i
                factors.append(i) 
                break

primeNumber()