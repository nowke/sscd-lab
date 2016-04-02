# Nested IF Control statements

> Write a YACC program to recognize nested IF control statements(C language) and display the
> number of levels of nesting


## Compile Manually
```bash
$ lex tokens.l
$ yacc -d grammar.y
$ cc lex.yy.c y.tab.c -o run
```
## Or Use `compile`
```bash
$ ./compile
````

## Run test provided
```bash
$ cat test_valid1
if (x != 3) {
	y = 2 + y - 3;
	if (k == 5) {
		j = j+1;
	}
} 
else {
	k = k + 4;
}

$ ./run test_valid1
Valid statement
If statements: 2

$ cat test_invalid1
if (k++) {
	else {}
} else {
	k = k*7;
}

$ ./run test_invalid1
Invalid statement
```