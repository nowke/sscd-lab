%{
    #include <stdio.h>
    #include <string.h>
    char find[100], replace[100];
%}
%%
[a-zA-Z]+   {
                if (strcmp(find, yytext) == 0)
                    fprintf(yyout, "%s", replace);
                else
                    fprintf(yyout, "%s", yytext);
            }

.|\n        { fprintf(yyout, "%s", yytext); }
%%

int main(int argc, char* argv[]) {
        
    if (argc < 3) {
        printf("Usage: ./run input output\n");
        return 1;
    }
    
    printf("Find: ");
    scanf("%s", find);
    printf("Replace: ");
    scanf("%s", replace);

    yyin = fopen(argv[1], "r");
    yyout = fopen(argv[2], "w");
    yylex();
    
    return 0;
}

int yywrap() { return 1; }
