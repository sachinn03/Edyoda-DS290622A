def sum_list(lst): 
    print(sum(lst))
    return lst
size = int(input("Enter the size of list :"))
lst = []
for  i in range(size):
    lst.append(int(input("Enter the number : ")))
sum_list(lst)