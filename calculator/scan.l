%option nodefault yylineno
%{
#include "ast.h"
#include "parse.tab.hpp" //Why do we include parse.tab.h? 
#include "parse.tab.h"
extern void yyerror(const char *s);
extern void yyerror(const char *s, const char ch);
//Can the main function be included here? I think so... 
%}
%%
"+"	{ return PLUS;}
"-"	{ return MINUS;}
"*"	{ return MULT;}
"/"	{ return DIV;}

[0-9]+ 	{ yylval = atoi(yytext);
	  return NUMBER;
	}
\n	{ return CR; }
%%
int yywrap(){      //What does yywrap do? 
  yylex_destroy(); //What is yylex_destroy? 
  return 1;
}
