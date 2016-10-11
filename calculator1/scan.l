%{
#include "parse.tab.h"
%}

%%

"+"	{return PLUS;}
"-"	{return MINUS;}
"*"	{return MULT;}
"/"	{return DIV;}
"("	{return LPARAN;}
")"	{return RPARAN;}
[0-9]	{yylval = atof(yytext);
	 return NUMBER;}
"\n"	{return CR;}

%%

int yywrap(){
  yylex_destroy();
  return 1;
}
