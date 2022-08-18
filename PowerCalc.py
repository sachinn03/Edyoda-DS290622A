class Power:
    def __init__(self,x,n):
        self.x = x
        self.n = n
    
    def calculatePower(self,x,n):
        return x**n


x = int(input("Enter the number :"))
n = int(input("Enter the power :"))
pow = Power(x,n)
print("\nNth Power of x is :",pow.calculatePower(x,n))
