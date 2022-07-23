dictionary = {}
for i in range(ord('a'),(ord('z')+1)):
    keys = chr(i)
    values = ord(keys)
    dictionary[keys] = values
print("Mini Dictionary :",dictionary)