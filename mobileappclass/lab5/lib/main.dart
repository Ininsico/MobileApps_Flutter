// // // Write a flutter app to show the grade of a student for the given marks. The marks are passed as
// // // an argument to the constructor of the widget class computing the grade. The computed grade is
// // // shown in the Text widget. Here is the grade distribution for different marks ranges:
// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   MyApp({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: const Text("Arslan_Rathore_Grading_Class"),
// //           backgroundColor: Colors.amberAccent,
// //         ),
// //         body: const SecondWidget(marks: 85),
// //       ),
// //     );
// //   }
// // }

// // class SecondWidget extends StatefulWidget {
// //   final double marks;
// //   const SecondWidget({super.key, required this.marks});

// //   @override
// //   State<SecondWidget> createState() => _SecondWidgetState();
// // }

// // class _SecondWidgetState extends State<SecondWidget> {
// //   String getGrade(double marks) {
// //     if (marks >= 90 && marks <= 100) {
// //       return 'A';
// //     } else if (marks >= 80 && marks < 90) {
// //       return 'B';
// //     } else if (marks >= 70 && marks < 80) {
// //       return 'C';
// //     } else if (marks >= 60 && marks < 70) {
// //       return 'D';
// //     } else if (marks >= 0 && marks < 60) {
// //       return 'F';
// //     } else {
// //       return 'Invalid Marks';
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Center(
// //       child: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           Text(
// //             "Marks : ${widget.marks.toString()}",
// //             style: const TextStyle(fontSize: 20),
// //           ),
// //           const SizedBox(height: 50),
// //           Text(
// //             "Grade : ${getGrade(widget.marks)}",
// //             style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // // }

// // Question 2:

// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return const MaterialApp(
// //       home: Name(),
// //     );
// //   }
// // }

// // class Name extends StatelessWidget {
// //   const Name({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Arslan Ahmed Rathore"),
// //         backgroundColor: Colors.amber,
// //       ),
// //       body: const Attendance(
// //         name1: "Ali",
// //         name2: "Ahmed",
// //         name3: "Sara",
// //         name4: "Zara",
// //       ),
// //     );
// //   }
// // }

// // class Attendance extends StatelessWidget {
// //   final String name1;
// //   final String name2;
// //   final String name3;
// //   final String name4;

// //   const Attendance({
// //     super.key,
// //     required this.name1,
// //     required this.name2,
// //     required this.name3,
// //     required this.name4,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Center(
// //       child: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           Text("$name1: ${randomStatus()}"),
// //           Text("$name2: ${randomStatus()}"),
// //           Text("$name3: ${randomStatus()}"),
// //           Text("$name4: ${randomStatus()}"),
// //         ],
// //       ),
// //     );
// //   }

// //   String randomStatus() {
// //     return DateTime.now().millisecondsSinceEpoch.isEven ? "Present" : "Absent";
// //   }
// // }

// //Question 3:
// // Write code to add a button in Flutter. The text showing in the button should be Click Here. When
// // the button is clicked, a Snackbar should be shown with message "hello world".

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ButtonWidget(),
//     );
//   }
// }

// class ButtonWidget extends StatefulWidget {
//   const ButtonWidget({super.key});
//   @override
//   State<ButtonWidget> createState() => _ButtonWidgetState();
// }

// class _ButtonWidgetState extends State<ButtonWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Arslan Rathore"),
//         backgroundColor: Colors.amberAccent,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             ScaffoldMessenger.of(context).showSnackBar(
//               const SnackBar(content: Text("hello world")),
//             );
//           },
//           child: const Text("Click Here"),
//         ),
//       ),
//     );
//   }
// }

// Write the code of TextFied() widget function.
// When a user enters any text in the TextField(), it is also automatically written in another
// TextField() in capital letters
import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHome());
  }
}

class MyHome extends StatefulWidget {
  MyHome({super.key});
  @override
  State<MyHome> createState() => Homer();
}

class Homer extends State<MyHome> {
  TextEditingController ts = TextEditingController();
  TextEditingController ts2 = TextEditingController();
  @override
  void initState() {
    super.initState();
    ts.addListener(() {
      ts2.text = ts.text.toUpperCase();
      ts2.selection = TextSelection.fromPosition(
        TextPosition(offset: ts2.text.length),
      );
    });
  }

  @override
  void dispose() {
    ts.dispose();
    ts2.dispose();
    super.dispose();
  }
  @override  
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title: Text('Arslan Rathore on the beat'),
        ),
        body:Padding(padding: const)
    );
  }
}
