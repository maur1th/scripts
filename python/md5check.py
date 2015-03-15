from sys import argv
from re import findall
from subprocess import Popen, PIPE


def error():
    print('Usage: md5check.py <file1> <file2>')


def clean(string):
    cleaned = findall(r'= (\w+)', string)[0]
    print(cleaned)
    return cleaned


try:
    hash2 = str(Popen(['md5', argv[2]], stdout=PIPE).stdout.read())
    hash1 = str(Popen(['md5', argv[1]], stdout=PIPE).stdout.read())
    if clean(hash1) == clean(hash2):
        print('MD5 Check succesful, the files are the same.')
    else:
        print('MD5 Check failed, the files are different.')
except:
    error()