void main(){
  List<Map<String,dynamic>> record =[
    {"name": "Ali", "age": 45, "marks": 32},
    {"name": "Noman", "age": 32, "marks": 23},
    {"name": "Faisal", "age": 41, "marks": 43},
    {"name": "Noman", "age": 11, "marks": 43},
    {"name": "Faisal", "age": 8, "marks": 43}
  ];
  for (var record in record){
    int age = record["age"];
    String name = record["name"];
    if (age>30 && (name =="Noman" || name =="Faisal")){
      print(record);
    }
  }
}