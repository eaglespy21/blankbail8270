%{
#include<iostream>
  int words = 0;
%}
word	[a-zA-Z]+

%%
{word}	{std::cout<<"Matched: "<<yytext<<std::endl; words++;}
.		{ }
%%
int yywrap() { return 1;}

