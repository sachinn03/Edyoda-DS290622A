def square(n):
    return n * n
size = int(input("Enter the size of the list :"))
lst = []
for i in range(size):
    lst.append(int(input("Enter the number :")))
print(lst)
res = map(square,lst)
print(list(res))