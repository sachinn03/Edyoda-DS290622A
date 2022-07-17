num1 = 0
num2 = 1

for i in range(50):
    if num2 > 50:
        break
    else:
        print(num2, end = " ")
        temp = num1
        num1 = num2
        num2 = num1 + temp