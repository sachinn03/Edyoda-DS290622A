def calculate(user_input):
    cap_count = 0
    low_count = 0
    s = ''
    for k in user_input:
        if k == " ":
            continue
        else:
            s = s + k
    for i in range(len(s)):
        if s[i] == s[i].upper():
            cap_count = cap_count + 1
        else:
            low_count = low_count + 1
    print("No. of upper case characters: ",cap_count)
    print("No. of upper case characters: ",low_count)
    return cap_count, low_count
user_input = input("Enter a string: ").strip()
calculate(user_input)