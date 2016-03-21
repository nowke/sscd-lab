# Positive & Negative integers & Fractions
> Write a LEX program to count number of Positive & negative integers and Positive & negative
> fractions

## Compile Manually
```bash
$ lex tokens.l
$ cc lex.yy.c -o run
```

## Or Use `compile`
```bash
$ ./compile
````

## Run Program
```bash
$ ./run
9 2 -9 -1 9.8 324.12
-9.2 -8.1  5/6  -9/6

Positive Integers: 2
Negative Integers: 2
Positive Fractions: 3
Negative Fractions: 3
```

## Run tests provided
```bash
$ ./run < test1
```
