%{
    #include "y.tab.h"
%}
identifier [_a-zA-Z][_a-zA-Z0-9]*

%%

{identifier} {
                return ID;
             }

[0-9]+       {
                return DIGIT;
             }

[-+/*]       {
                return OP;
             }

[()*\n]      {
                return *yytext;
             }

[ \t]     ;

%%

int yywrap() { return 1; }
