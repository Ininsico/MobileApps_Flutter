import 'dart:io';
void main(){
  var record=[
    (name:'Arslan',age:23),
    (name:"bob",age:34),
  ];
  for(var r in record){
    print("name: ${r.name} and age : ${r.age}");
  }
}