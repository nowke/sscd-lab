%{
    #include <stdio.h>
    enum states {
        NORMAL,
        SINGLE_LINE,
        MULTILINE
    };
    enum states STATE = NORMAL;

    int comments = 0;
%}
%%
"//"    { STATE = SINGLE_LINE; }
"/*"    { STATE = MULTILINE; }
"*/"    { if (STATE == MULTILINE) {
             STATE = NORMAL;
             comments++;
          }
        }

\n      { 
            if (STATE == SINGLE_LINE) {
                comments++;
                STATE = NORMAL;
            }
            if (STATE == MULTILINE)
                comments++;
            if (STATE == NORMAL)
                fprintf(yyout, "\n");
        }

.       {
            if (STATE == NORMAL)
                fprintf(yyout, "%s", yytext);
        }

%%
int main(int argc, char* argv[]) {
    if (argc < 3) {
        printf("Usage: ./run input.c output.c\n");
        return 1;
    }

    yyin = fopen(argv[1], "r");
    yyout = fopen(argv[2], "w");
    yylex();

    printf("No. of comment lines: %d\n", comments);

    return 0;
}
    
int yywrap() { return 1; }
