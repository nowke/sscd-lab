%{
    #include <stdio.h>
    
    int ids=0;
%}
types ("int"|"float"|"char"|"double")
alpha [a-zA-Z_]
alnum [a-zA-Z0-9]
%%

{types}[ ]+{alpha}{alnum}*[;]  { ids++; }

{types}[ ]+({alpha}{alnum}*[,][ ]*)+{alpha}{alnum}*[;] {
        
    int i=0;
    while (yytext[i] != '\0') {
        if (yytext[i] == ',' || yytext[i] == ';') ids++;
        i++;
    }
}

.|\n { }
%%

int main(int argc, char* argv[]) {
    if (argc < 2) {
        printf("Usage: ./run input\n");
        return 1;
    }

    yyin = fopen(argv[1], "r");
    yylex();

    printf("\nNo.of identifiers: %d\n", ids);
}

int yywrap() { return 1; }

