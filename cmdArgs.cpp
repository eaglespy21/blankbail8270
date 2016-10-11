#include<iostream>

int main(int argc, char* argv[]){
  for(int i=0;i<argc;i++){
    std::cout<<"Command line argument "<<argc<<" :"<<argv[i]<<std::endl;
  }
  return 0;
}
  
