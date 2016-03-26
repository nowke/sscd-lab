# Expression Validation

> Write a YACC program to test the validity of a simple expression involving operators +, -, *
> and /


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

## Run Program
```bash
$ ./run
2+3
Valid
2
Valid
x
Valid
x+3
Valid
2 * y-5
Valid
```
## Run test provided
```bash
$ cat test
2+(4-8)
x*y-z+65/2
(myvar - var2) * 7 + hello

$ ./run < test
Valid
Valid
Valid
```