%{
    #include <stdio.h>
    #include <stdlib.h>
%}

%%

statement:
        statement S '\n' { printf("Valid\n"); }
        |
        ;

S:  A B ;

A:  'a' A 'b'
    |
    ;

B: 'b' B 'c'
    |
    ;

%%

yyerror() {
    printf("Invalid\n");
    exit(1);
}

int main() {
    yyparse();
    return 0;
}
