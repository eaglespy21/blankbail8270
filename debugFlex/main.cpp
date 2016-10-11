#include<iostream>
int yylex();
int main() {
  int token = yylex();
  while ( token ) {
    std::cout << "token: " << token << std::endl;
    token = yylex();
  }
  return 0;
}

