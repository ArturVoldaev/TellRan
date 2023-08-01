print("Input number A")
numberA = int(input())
print("Input number B")
numberB = int(input())
print("Choose math action:")
print("+")
print("-")
print("*")
print("/")
userAction = input()

def calculate(userAction, numberA, numberB):
    if userAction == "+":
        print(numberA + numberB)
    if userAction == "-":
        print(numberA - numberB)
    if userAction == "*":
        print(numberA * numberB)
    if userAction == "/":
        if numberB == 0:
            while numberB <= 0:
                print("Input number B. NumberB MUST be > 0")
                print("Input number B")
                numberB = int(input())
            return print(numberA / numberB)
    print(numberA / numberB)


calculate(userAction, numberA, numberB)