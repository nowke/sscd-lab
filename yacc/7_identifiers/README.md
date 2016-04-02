# Identifiers

> Write a YACC program to identify the number of variables, which starts with a letter or
> underscore, followed by any number of letters or digits or underscores


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
$ cat input
hi123 9_8 he123 1_ui ji_12

$ ./run input

No.of identifiers: 3
```