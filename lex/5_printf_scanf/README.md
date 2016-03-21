# 'scanf' & 'printf'
> Write a LEX program to count the number of `scanf` and `printf` statements in a C program. Replace > them with `readf` and `writef` statements respectively.

## Compile Manually
```bash
$ lex tokens.l
$ cc lex.yy.c -o run
```

## Or Use `compile`
```bash
$ ./compile
````

## Test Input file `input.c`
```c
printf("hello world");
scanf("%d", &n);
printf("Hi!!");
scanf("%s", str);
```

## Run the script
```bash
$ ./run input.c output.c

No.of scanf: 2
No.of printf: 2

$ cat output.c

writef("hello world");
readf("%d", &n);
writef("Hi!!");
readf("%s", str);
```
