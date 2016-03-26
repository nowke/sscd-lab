# Arithmetic Expression evaluation

> Write a YACC program to evaluate an arithmetic expression 
> involving operators +, -, * and /.

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
1+2*4
9
8*(6/2)-2
22
```
## Run test provided
```bash
$ cat test
2+3
9+(8*7)-8
(9/3)*2
7+2*7

$ ./run < test
5
57
6
21
```