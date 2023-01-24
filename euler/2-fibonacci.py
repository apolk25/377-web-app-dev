fib = [1, 2]
sum = 0


cur = 1
last = 0
while fib[-1] < 4000000:
    fib.append(fib[cur] + fib[last])
    cur += 1
    last += 1

fib.pop()
for i in range(len(fib)):
    if fib[i] % 2 == 0:
        sum += fib[i]

print(sum)

