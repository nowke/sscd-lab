# Identifiers
> Write a LEX program to recognize and count the number of identifiers in a given input file

## Compile Manually
```bash
$ lex tokens.l
$ cc lex.yy.c -o run
```

## Or Use `compile`
```bash
$ ./compile
````

## Test Input file `test`
```c
int c;
char y;
char k,l,m;
double i,j;
float p,q;
```

## Run the test
```bash
$ ./run test

No.of identifiers: 9
```
