user_input = input("Enter a string: ")
str_len = len(user_input)
reversed = " "
for i in range(str_len):
    reversed = user_input[i] + reversed
print(reversed)