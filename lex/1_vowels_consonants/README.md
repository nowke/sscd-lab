# Vowels - Consonants

> Write a LEX program to count the number of vowels 
> and consonants in a given string

## Compile Manually
```sh
$ lex tokens.l
$ cc lex.yy.c -o run
```

## Or Use `compile`
```sh
$ ./compile
````

## Run Program
```sh
$ ./run
Enter String
arithMetiC ExpreSSion

Vowels: 8
Consonants: 12
```

## Run tests provided
```sh
$ ./run < test1
...

$ ./run < test2
...

$ ./run < test3
```
