# Vowels - Consonants

> Write a LEX program to count the number of vowels 
> and consonants in a given string

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
Enter String
arithMetiC ExpreSSion

Vowels: 8
Consonants: 12
```

## Run tests provided
```bash
$ ./run < test1
...

$ ./run < test2
...

$ ./run < test3
```
