%{
#include<iostream>
%}
%%
a+b+	{std::cout<<"match: "<<yytext<<std::endl;}
(?i:m)	{std::cout<<"matched m/M:"<<yytext<<std::endl;}
\n	{}
.	{}
%%
int yywrap(){return 1;}

