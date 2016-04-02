%{
    #include <stdio.h>
    #include <stdlib.h>

    extern FILE* yyin;
    int identifiers = 0;
%}

%token LETTER UNDERSCORE DIGIT SPACE

%%

S:    UNDERSCORE A      { identifiers++; }
    | LETTER A      { identifiers++; }
    | DIGIT A
    ;

A:    LETTER A
    | DIGIT A   
    | UNDERSCORE A
    | SPACE S
    |
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

    printf("No.of identifiers: %d\n", identifiers);

}