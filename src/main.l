%{
#include <stdio.h>

%}

STRING [a-zA-Z0-9]+
n1 \n

%%

{STRING}+([-_.]*{STRING}+)*[@]{STRING}+([-_.]*{STRING}+)*{STRING}? { printf("%s\n", yytext); }

[[:space:]]+ ;
[[:^space:]]+ ;

%%

int main() {
  yylex();
  return 0;
}
