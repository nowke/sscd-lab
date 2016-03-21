# Find & Replace
> Write a LEX program to implement Find and Replace command that replaces all the occurences of one 
> given word by the other.

## Compile Manually
```bash
$ lex tokens.l
$ cc lex.yy.c -o run
```

## Or Use `compile`
```bash
$ ./compile
````

## Test Input file `input`
```
Donald Trump is an American 
businessman, politician, television 
personality, and candidate. Trump is god!
```

## Run the test
```bash
$ ./run input output
Find: Trump
Replace: Duck

$ cat output

Donald Duck is an American 
businessman, politician, television 
personality, and candidate. Duck is god!
```
