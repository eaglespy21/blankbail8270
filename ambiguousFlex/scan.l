%{
%}
%%
"+="	{return 258;}
"+"	{return 259;}
"444"	{return 260;}
"444"	{return 261;}
[0-9]+	{return 262;}
\n	{return 263;}
.	{return -1;}
%%
int yywrap() {return 1;}
