%{
#include<iostream>
%}
%option noinput
%option nounput

%%
4		{std::cout << "a";}
8		{std::cout << "b";}
\<		{std::cout << "c";}
\|\)		{std::cout << "d";}
3		{std::cout << "e";}
\|=		{std::cout << "f";}
\[,		{std::cout << "g";}
\|-\|		{std::cout << "h";}
1		{std::cout << "i";}
_\|		{std::cout << "j";}
\|\<		{std::cout << "k";}
\|_		{std::cout << "l";}
\|V\|		{std::cout << "m";}
\|\\\|		{std::cout << "n";}
\(\)		{std::cout << "o";}
\|o		{std::cout << "p";}
O_		{std::cout << "q";}
\|2		{std::cout << "r";}
5		{std::cout << "s";}
7		{std::cout << "t";}
\\_\\		{std::cout << "u";}
\\\/		{std::cout << "v";}
\\^\/		{std::cout << "w";}
%		{std::cout << "x";}
`\/		{std::cout << "y";}
\>_		{std::cout << "z";}
O               {std::cout << "0";}
L               {std::cout << "1";}
R               {std::cout << "2";}
E               {std::cout << "3";}
A               {std::cout << "4";}
S               {std::cout << "5";}
b               {std::cout << "6";}
T               {std::cout << "7";}
B               {std::cout << "8";}
g               {std::cout << "9";}
bai             {std::cout << "bye";}
ceak            {std::cout << "cake";}
nd             	{std::cout << "and";}
d00e            {std::cout << "dude";}
form            {std::cout << "from";}
guise           {std::cout << "guys";}
hai             {std::cout << "hi";}
j00             {std::cout << "you";}
.		{std::cout << yytext;}
\n		{std::cout << std::endl;}
%%

int yywrap() { return 1;}


