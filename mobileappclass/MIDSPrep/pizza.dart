// //Build an Resuturant Mnagement System
// import 'dart:io';
// typedef ResturantOperations =  function();
// Resturant()=>LoginScreen();
// User()=>LoginScreen();
// Exit()=>exit(0);


// void main(){
  
//   Map<String,ResturantOperations> loginoptions = {
//     "1" : Resturant,
//     "2" : User,
//     "3" : Exit
//   }
// print("Resturant Management System");
// double choice = getNumber("Login Menu Choose Which Portal do u want to login into");
// print("1. ResturantPortal");
// print("2. UserPortal");
// double result = ResturantOperations!(chocie);
// }

// double getNumber(String prompt){
//   while(true){
//     stdout.write(prompt);
//     try{
//        return double.parse(stdin.readLineSync()!);
//     }
//     catch(error){
//       print("Invalid Value choose correct");
//     }
//   }
// }

// void LoginScreen(){
//   stdout.write("Choose the Account:");
//   for(int i=0;i<record.length();i++){
//     stdout.write("${record.name} Portal : ");
//   }
//   Map<int,String> record = {
//     "1":"Owner",
//     "2":"Cook",
//     "3":"Waiter",
//     "4":"Accountant"
//   }
// }

// typedef LoginScreeRedirectTypes = Function (int a);
// void Owner()=>LoginScreenRedirect(String owner);
// void Cook()=>LoginScreenRedirect(String cook);
// void Waiter()=>LoginScreenRedirect(String cook);
// void Accountant()=>LoginScreenRedirect(String accountant);


// void LoginScreenRedirect(String a){
//     stdout.write("${a} login screen");
//     bool Username = ReadUserName("Enter the Username : " , a);
//     bool Password = ReadPassword("Enter the Password : " , a);
//     if(Username ==false){
//       stdout.write("Wrong Username entered");
//     }
//     else if (Username == true && Password== false){
//       stdout.write("Wrong Password Entered ");
//     }
//     else {
//       stdout.write("Entering ${a} Portal");
//       LogedInscreen(a);
//     }
// }

// String? ReadUserName(String prompt, String a){
//   while(true){
//     stdout.write("Enter the Username : ");
//     if (username.compareTo(a.records)==true){
//       return true + username;
//     }
//     else (
//       stdout.write("Wrong Username Entered");
//       return false;
//     );
//   }
// }


// String? ReadPassword(String prompt, String a){
//   while(true){
//     stdout.write("Enter the Username : ");
//     if (password.compareTo(a.username.records)==true){
//       return true;
//     }
//     else (
//       stdout.write("Wrong Password Entered");
//       return false;
//     );
//   }
// }

// var records = [
//   admin = (username:arslan,password:123);
//   cook = (username:cook,password:123);
//   waiter = (username:waiter,password:123);
//   accountant = (username:accountant,password:123);
// ];

// void LogedInscreen(String a){
//   stdout.write("Looged in for ${a} : ${a.records.username}");
//   if
// }