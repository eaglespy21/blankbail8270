#include<iostream>
int variable = 10;
namespace mynamespace{
  int variable = 20;
}
int main(){
  int variable = 30;
  std::cout<<"function variable: "<<variable<<std::endl;
  std::cout<<"default namespace variable: "<< ::variable<<std::endl;
  std::cout<<"mynamespace variable: "<<mynamespace::variable<<std::endl;
  return 0;
}
