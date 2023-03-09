Lab - String Manipulation Library
=================================

- Implement a library for string manipulation library with the following functions:
```
int mystrlen(char *str)
char *mystradd(char *origin, char *addition)
int mystrfind(char *origin, char *substr)
```

- Call all functions on `strlib.c` from the `static-linking.c` file

- Your program needs to support the following arguments. Check the following examples for expected output:
```
$ ./main.o -add "Initial String " "This is the rest to be added"
Initial Lenght      : 15
New String          : Initial String This is the rest to be added
New length          : 43

$ ./main.o -find "Initial String " "Init"
['Init'] string was found at [0] position
```

General instructions and advices
--------------------------------
1. Take a look on [Linking Process in C](https://talks.obedmr.com/content/hello-c-world/start-up/03-linking.html) for a better undersanding.
2. Use the  `strlib.c` and `static-linking.c` files for your code.
3. Have fun and don't forget to push your code


Test Suite
----------
Build and Test automation is already implemented with the following command. Below some general tips and comments.

- Make sure that your program passes all test cases without errors.
- Remember that this is being executed by a robot script.
- You cannot edit the `Makefile` file.
- Failed compilation or segmentation faults means 0-graded.
- Failed tests will be properly discounted from total grade.

```
make test
```
