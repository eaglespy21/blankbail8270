#include<iostream>

int main(int argc, char* argv[]){
  int number;  
  char character;
  //for(int i=0;i<argc;i++){
    //std::cin>>number;
   std::cin>>character; 
   //switch((int)argv[i]){
    //switch(number){
   switch(character){
      case 'a':
        std::cout<<"It's a 1\n";
        break;
      case 'b':
        std::cout<<"It's a 2\n";
        break;
      case 'c':
        std::cout<<"It's a 3\n";
        break;
      default:
        std::cout<<"It's something else\n";
        break;
    }
  //}
  return 0;
}
