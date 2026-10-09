import re


def main():
    contains_lower = re.compile("[a-z]*")
    contains_upper = re.compile("[A-Z]*")
    contains_number = re.compile("[0-9]*")

    passwd = input("Enter a password: ")
    if (
        re.search(contains_lower, passwd)
        and re.search(contains_upper, passwd)
        and re.search(contains_number, passwd)
        and len(passwd) >= 8
    ):
        print("Good")
    else:
        print("nO")
