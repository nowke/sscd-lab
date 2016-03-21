# Characters, Words, Lines
> Write a LEX program to count number of words, lines and characters

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
Donald John Trump is an American 
businessman, politician, television 
personality, and candidate

Characters: 98
Words: 12
Lines: 3

```

## Run tests provided
```sh
$ ./run < test1

Characters: 59
Words: 12
Lines: 3
```

Verify with `wc` command
```sh
$ wc test1
3 12 59 test1
```
