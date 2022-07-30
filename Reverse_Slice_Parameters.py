def reverse_string(user_input):
    reversed = user_input[::-1]
    print("Input :",user_input)
    print("Output :",reversed)
    return reversed
user_input = input("Enter a string: ")
reverse_string(user_input)