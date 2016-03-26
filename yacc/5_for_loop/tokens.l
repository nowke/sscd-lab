%{
    #include "y.tab.h"
%}

identifier [_a-zA-Z][_a-zA-Z0-9]*
comp ("<"|">"|">="|"<="|"=="|"!=")
unary ("++"|"--")

%%

"for"         {
                return FOR;
              }

{identifier}  {
                return VARIABLE;
              }

{comp}        {
                return COMP;
              }

{unary}       {
                return UNARY;
              }

[0-9]+        {
                return NUM;
              }

[-+/*]        {
                return BIN;
              }

[()=;}{]      {
                return *yytext;
              }

[ \t\n]       ;

%%

int yywrap() { return 1; }
