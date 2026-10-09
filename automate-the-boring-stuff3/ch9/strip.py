import re


def strip(string: str, pattern: str = None):
    if pattern is None:
        pattern = r"\s+"
    regx = re.compile(pattern + "\Z")
    return re.sub(regx, "", string)


def main():
    str1 = "test espace \t   \t"
    str2 = "test rien\n"
    str3 = "test123 nombre12345"
    print(strip(str1))
    print(strip(str2))
    print(strip(str3, "[0-9]*"))


main()
