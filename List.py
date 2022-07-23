number = int(input("Enter the number of tuples :"))
size = int(input("Enter the size of tuples :"))
lst = []
for i in range(0,number):
    temp_lst = []
    for j in range(0,size):
        element = int(input("Enter the element of tuple :"))
        temp_lst.append(element)
    temp_tuple = tuple(temp_lst)
    lst.append(temp_tuple)
print("Unsorted List of tuples is :", lst )
temp = 0
for unit in lst:
    for  k in range(len(lst) -1) :
        if (lst[k][size-1] > lst[k + 1][size-1]):
            temp = lst[k]
            lst[k] = lst[k + 1]
            lst[k + 1] = temp
print("Sorted List of tuples in order of last element of each tuple is :", lst)