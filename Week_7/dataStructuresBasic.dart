void main(){
  // Lists
  List <String> myList = ['0', '1', '2'];
  print("First element with zero idx ${myList[0]}");
  
  print("1 At ${myList.indexOf('1')}. idx ");
   
  // adding
  myList.add('3');
  
  myList.remove('2');
  
  int len = myList.length;
  
  print(myList);
  print("Len : $len");
  
  myList.insert(2,'2');
  print(myList);
  print("iy is not a dynamic Len : $len");
  
  // conditionals
  int a = 10;
  if(a < 10) print("a < 10 ${a<10}");
  else print("!(a < 10) ${!(a<10)}");
  
  // or
  
  a > 10 ? print("a is greaten than 10") : print("a is not greater than 10");
}