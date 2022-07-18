size = int(input("Enter the size : "))
lst = []
even_count=0
odd_count=0
for i in range(1,size+1):
    num = int(input(" Enter the number : "))
    lst.append(num)
print(lst)
for unit in lst:
    if unit % 2 == 0:
        even_count = even_count + 1
    else:
        odd_count = odd_count + 1
print("Number of even number :", even_count)
print("Number of odd number :", odd_count)