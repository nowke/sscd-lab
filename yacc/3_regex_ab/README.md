# Regex - a<sup>n</sup>b<sup>n</sup>

> Write a YACC program to recognize strings of the form
> a<sup>n</sup>b<sup>n</sup>, n >= 0

## Grammar

> S &rarr; aSb | ab | &straightepsilon;


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
ab
Valid
aabb
Valid
```
## Run test provided
```bash
$ cat test
ab
aabb
aaabbb

$ ./run < test
Valid
Valid
Valid
```