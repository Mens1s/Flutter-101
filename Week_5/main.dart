
twoNumAdd(int n1,int n2){return n1+n2;}
int twoNumAdd2(n1, n2){return n1+n2;}

String getStr(){
  String n = "mens1s";
  return n;
}
void main(){

  for(int i = 0; i < 5;){
    print('Hello ${i++}');
  }

  print(twoNumAdd(1, 5).toString() +"---"+ getStr() );

  // int string double vb included
  // var from variable which is in javascript is also here

  var myArray = [1,23,"asd",424,123];// mixed array is accepted! List
  for(var a in myArray)
    print(a);

  dynamic dynamicVar; // tip degismesi var not useful!:()
  dynamicVar = 12;
  print(dynamicVar);
  dynamicVar ="asd";
  print(dynamicVar);
  // var and dynamic not correct for using DON2T USE THEM!
}