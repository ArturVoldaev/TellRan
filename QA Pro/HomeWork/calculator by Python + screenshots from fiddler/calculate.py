import unittest
import random

# print("Input number A")
# numberA = int(input())
# print("Input number B")
# numberB = int(input())
# print("Choose math action:")
# print("+")
# print("-")
# print("*")
# print("/")
# userAction = input()

class Calculator(unittest.TestCase):
    def test_caculate_all_actions(self):
        self.assertEqual(self.calculate("+", 2, 2), 4)
        self.assertEqual(self.calculate("-", 2, 2), 0)
        self.assertEqual(self.calculate("*", 2, 2), 4)
        self.assertEqual(self.calculate("/", 2, 2), 1)

    def test_caculate_user_action_not_sign(self):
        self.assertEqual(self.calculate("b", 2, 2), "default case")

    def test_random_sum(self):
        first_random_int = random.randint(0, 100)
        second_random_int = random.randint(0, 100)
        result = first_random_int + second_random_int
        self.assertEqual(self.calculate("+", first_random_int, second_random_int), result)

    def test_random_min(self):
        first_random_int = random.randint(0, 100)
        second_random_int = random.randint(0, 100)
        result = first_random_int - second_random_int
        self.assertEqual(self.calculate("-", first_random_int, second_random_int), result)

    def test_random_mul(self):
        first_random_int = random.randint(0, 100)
        second_random_int = random.randint(0, 100)
        result = first_random_int * second_random_int
        self.assertEqual(self.calculate("*", first_random_int, second_random_int), result)

    def test_random_div(self):
        first_random_int = random.randint(0, 100)
        second_random_int = random.randint(0, 100)
        result = first_random_int / second_random_int
        self.assertEqual(self.calculate("/", first_random_int, second_random_int), result)


    def calculate(self, userAction, numberA, numberB):
        if userAction == "+":
            return(numberA + numberB)
        elif userAction == "-":
            return(numberA - numberB)
        elif userAction == "*":
            return(numberA * numberB)
        elif userAction == "/":
            while numberB == 0:
                return("Input number B. NumberB MUST be > 0")
                return("Input number B")
                numberB = int(input())
            return (numberA / numberB)
        else:
            return "default case"

if __name__ == '__main__':
    unittest.main()