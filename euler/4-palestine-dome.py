largest = 0
palindromes = []
def reverseStuff(product):
    product = str(product)
    length = len(product) / 2
    length = int(length)
    firstHalf = product[:length]
    secondHalf = product[-length:]
    reversedSecond = secondHalf[::-1]
    if(firstHalf == reversedSecond):
        palindromes.append(int(firstHalf + secondHalf))


for i in range(100, 999):
    for j in range(100, 999):
        product = i * j
        palindrome = reverseStuff(product)


palindromes.sort()
print(palindromes[-1])

