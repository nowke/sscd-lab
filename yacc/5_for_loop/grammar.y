%{
    #include <stdio.h>
    #include <stdlib.h>

    extern FILE *yyin;
%}

%token FOR VARIABLE COMP UNARY NUM BIN

%%
s:  forloop { printf("Valid statement\n"); }
    |
    ;

forloop:    FOR '(' expr ';' expr ';' expr ')' '{'
                statements  '}'
            ;

expr:   
        VARIABLE
        | NUM
        | VARIABLE '=' expr
        | expr BIN expr
        | expr UNARY
        | expr COMP expr
        |
        ;

statements:
        statement statements
        |
        ;

statement:
        forloop
        | expr ';'
        ;

%%

yyerror() {
    printf("Invalid statement\n");
    exit(1);
}

int main(int argc, char* argv[]) {
    if (argc < 2) {
        printf("Usage: ./run input\n");
        return 1;
    }

    yyin = fopen(argv[1], "r");
    yyparse();
    
    return 0;
}
