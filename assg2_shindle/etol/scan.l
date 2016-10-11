%{
#include<iostream>
%}
%option noinput
%option nounput

%%
[aA]		{std::cout << "4";}
[bB]		{std::cout << "8";}
[cC]		{std::cout << "<";}
[dD]		{std::cout << "|)";}
[eE]		{std::cout << "3";}
[fF]		{std::cout << "|=";}
[gG]		{std::cout << "[,";}
[hH]		{std::cout << "|-|";}
[iI]		{std::cout << "1";}
[jJ]		{std::cout << "_|";}
[kK]		{std::cout << "|<";}
[lL]		{std::cout << "|_";}
[mM]		{std::cout << "|V|";}
[nN]		{std::cout << "|\\|";}
[oO]		{std::cout << "()";}
[pP]		{std::cout << "|o";}
[qQ]		{std::cout << "O_";}
[rR]		{std::cout << "|2";}
[sS]		{std::cout << "5";}
[tT]		{std::cout << "7";}
[uU]		{std::cout << "\\_\\";}
[vV]		{std::cout << "\\/";}
[wW]		{std::cout << "\\^/";}
[xX]		{std::cout << "%";}
[yY]		{std::cout << "`/";}
[zZ]		{std::cout << ">_";}
0               {std::cout << "O";}
1               {std::cout << "L";}
2               {std::cout << "R";}
3               {std::cout << "E";}
4               {std::cout << "A";}
5               {std::cout << "S";}
6               {std::cout << "b";}
7               {std::cout << "T";}
8               {std::cout << "B";}
9               {std::cout << "g";}
bye		{std::cout << "bai";}
cake		{std::cout << "ceak";}
and		{std::cout << "nd";}
dude		{std::cout << "d00d";}
from		{std::cout << "form";}
guys		{std::cout << "guise";}
hi		{std::cout << "hai";}
you		{std::cout << "j00";}

.		{std::cout << yytext;}
\n		{std::cout << std::endl;}
%%

int yywrap() { return 1;}


