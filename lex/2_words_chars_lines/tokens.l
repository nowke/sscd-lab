%{
    #include <stdio.h>
    #include <string.h>

    int nchar=0, nword=0, nline=0;
%}

%%
\n        { nline++; nchar++; }
[^ \t\n]+ { nword++; nchar += yyleng; }
.         { nchar++; }
%%

int main() {
    yylex();
    printf("\nCharacters: %d\nWords: %d\nLines: %d\n", nchar, nword, nline);
}

int yywrap() { return 1; }
