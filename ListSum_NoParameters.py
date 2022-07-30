def sum_list(): 
    size = int(input("Enter the size of list :"))
    lst = []
    for  i in range(size):
        lst.append(int(input("Enter the number : ")))
    print(sum(lst))
    return lst
sum_list()