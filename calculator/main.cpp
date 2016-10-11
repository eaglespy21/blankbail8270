#include<iostream>
extern int yyparse();

int main(){
  //if( yyparse()){
  //}
  try{
    std::cout<<">";
    int returnCode = yyparse();
    std::cout<< std::endl;
    return returnCode;
  }
  catch(const  std::string &msg){
    std::cout<<msg<<std::endl;
  }
  catch(...){
    std::cout<<"Manuel Neuer"<<std::endl;
  }
  return 0;
}
