#include<iostream>
#include<cstring>
class student{
public:
  student():
  name(new char[7])
  { //Default constructor
    //name = "Noname";
    std::cout<<"Default\n";
    strcpy(name, "Noname");
  }
  student(const char* s):
  name(new char[strlen(s)+1])
  { //Covert constructor
    std::cout<<"Convert\n";
    strcpy(name, s);
  }
  student(const student& stu):
  name(new char[strlen(stu.name) + 1]) //Can be getbuf too. 
  { //Copy constructor
    std::cout<<"Copy\n";
    strcpy(name, stu.name);
  }
  student& operator=(const student& rhs)
  { //Copy assignment operator
    if(name == rhs.name){ return *this;}
    delete [] name; 
    name = new char[strlen(rhs.name)+1];
    strcpy(name, rhs.name);
  }
  
  ~student(){
    delete [] name;
  }
  const char* getStudent() const 
  { //Getter function
    return name;
  }
  void setStudent(const char* setValue)
  { //Setter function
    delete [] name;
    name = new char[strlen(setValue) + 1];
    strcpy(name, setValue);
  }
private:
  char* name;
};
std::ostream& operator<<(std::ostream& out, student& stu){
  return out<<stu.getStudent();
}
   

int main(){
  student roll1("Saurabh"), roll2(roll1);
  std::cout<<roll1<<std::endl;
  std::cout<<roll2<<std::endl;
  roll2 = roll1;
  std::cout<<roll2<<std::endl;
  student *ptr = new student("Mary");
  return 0;
} 
