def reverse_string(user_input):
    str_len = len(user_input)
    reversed = " "
    for i in range(str_len):
        reversed = user_input[i] + reversed
    print("Input :",user_input)
    print("Output :",reversed)
    return reversed

user_input = input("Enter a string: ")
reverse_string(user_input)
