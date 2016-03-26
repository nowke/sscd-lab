# Nested For loop

> Write a YACC program to recognize a nested FOR loop statement for C language.


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
for (i=0;i<=5;i++) {
	k=5;
	for (hi=22; hi> 1; hi--) {
		k++;
		j = 89 + x;
		k = k+1;
	}
	p = p+1;
}

$ ./run test_valid1
Valid statement

$ cat test_invalid1
for (;) {
	k = k+1;
}
$ ./run test_invalid1
Invalid statement
```