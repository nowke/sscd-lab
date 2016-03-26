# Regex - a<sup>n</sup>b<sup>n+m</sup>c<sup>m</sup>

> Write a YACC program to recognize strings of the form
> a<sup>n</sup>b<sup>n+m</sup>c<sup>m</sup>

## Grammar

> S &rarr; AB
> 
> A &rarr; aAb | &straightepsilon;
>
> B &rarr; bBc | &straightepsilon;

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
abbbcc
Valid
abbcc
Invalid
```
## Run test provided
```bash
$ cat test
aabbbc
abbc
aabbbbcc
abbbbccc

$ ./run < test
Valid
Valid
Valid
Valid
```