// // Write a flutter app to show the grade of a student for the given marks. The marks are
// // passed as an argument to the constructor of the widget class computing the grade.
// // The computed grade is shown in the Text widget. Here is the grade distribution for
// // different marks ranges:
// // < 50 --- F
// // >= 50 and < 60 --- E
// // >= 60 and < 70 --- D
// // >= 70 and < 80 --- C
// // >= 80 and < 90 --- B
// // >= 90 --- A
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "GradeCalculator",
//       home: MyHome(marks: 53),
//     );
//   }
// }

// class MyHome extends StatelessWidget {
//   final int marks;
//   const MyHome({super.key, required this.marks});
//   String calculateGrade() {
//     if (marks < 50) {
//       return 'F';
//     } else if (marks >= 50 && marks < 60) {
//       return 'E';
//     } else if (marks >= 60 && marks < 70) {
//       return 'D';
//     } else if (marks >= 70 && marks < 80) {
//       return 'C';
//     } else if (marks >= 80 && marks < 90) {
//       return 'B';
//     } else {
//       return 'A';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Grade Calculator'),
//         backgroundColor: Colors.blue,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Marks :$marks', style: const TextStyle(fontSize: 32)),
//             const SizedBox(height: 52),
//             Text(
//               'Grade : ${calculateGrade()}',
//               style: TextStyle(
//                 fontSize: 32,
//                 fontWeight: FontWeight.bold,
//                 color: marks >= 50 ? Colors.green : Colors.red,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Multiplication App',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         useMaterial3: true,
//       ),
//       home: const MultiplicationScreen(),
//     );
//   }
// }

// class MultiplicationScreen extends StatefulWidget {
//   const MultiplicationScreen({super.key});

//   @override
//   State<MultiplicationScreen> createState() => _MultiplicationScreenState();
// }

// class _MultiplicationScreenState extends State<MultiplicationScreen> {
//   // Creating TextEditingControllers to get values from TextFields
//   final TextEditingController _firstNumberController = TextEditingController();
//   final TextEditingController _secondNumberController = TextEditingController();
  
//   // Variable to store the multiplication result
//   String _result = '';
  
//   // Variable to show error message if input is invalid
//   String _errorMessage = '';

//   // Function to multiply the two numbers
//   void _multiplyNumbers() {
//     setState(() {
//       // Get values from TextFields using controllers
//       String firstValue = _firstNumberController.text;
//       String secondValue = _secondNumberController.text;
      
//       // Clear previous error message
//       _errorMessage = '';
      
//       // Check if both TextFields are not empty
//       if (firstValue.isEmpty || secondValue.isEmpty) {
//         _errorMessage = 'Please enter both numbers';
//         _result = '';
//         return;
//       }
      
//       // Try to parse the values to double
//       try {
//         double? num1 = double.tryParse(firstValue);
//         double? num2 = double.tryParse(secondValue);
        
//         if (num1 != null && num2 != null) {
//           // Perform multiplication
//           double product = num1 * num2;
          
//           // Check if the result is an integer to display without decimal
//           if (product == product.toInt()) {
//             _result = product.toInt().toString();
//           } else {
//             _result = product.toString();
//           }
//         } else {
//           _errorMessage = 'Please enter valid numbers';
//           _result = '';
//         }
//       } catch (e) {
//         _errorMessage = 'An error occurred';
//         _result = '';
//       }
//     });
//   }

//   @override
//   void dispose() {
//     // Clean up controllers when the widget is removed
//     _firstNumberController.dispose();
//     _secondNumberController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Multiplication Calculator',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//         elevation: 2,
//         backgroundColor: Theme.of(context).primaryColor,
//         foregroundColor: Colors.white,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             // First TextField
//             TextField(
//               controller: _firstNumberController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 labelText: 'Enter First Number',
//                 hintText: 'e.g., 10',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 prefixIcon: const Icon(Icons.numbers),
//                 filled: true,
//                 fillColor: Colors.grey.shade50,
//               ),
//               style: const TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
            
//             const SizedBox(height: 20),
            
//             // Second TextField
//             TextField(
//               controller: _secondNumberController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 labelText: 'Enter Second Number',
//                 hintText: 'e.g., 5',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 prefixIcon: const Icon(Icons.numbers),
//                 filled: true,
//                 fillColor: Colors.grey.shade50,
//               ),
//               style: const TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
            
//             const SizedBox(height: 30),
            
//             // Multiplication Button
//             ElevatedButton(
//               onPressed: _multiplyNumbers,
//               style: ElevatedButton.styleFrom(
//                 padding: const EdgeInsets.symmetric(vertical: 16),
//                 backgroundColor: Colors.green,
//                 foregroundColor: Colors.white,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 elevation: 5,
//                 textStyle: const TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               child: const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.clear_all, color: Colors.white),
//                   SizedBox(width: 10),
//                   Text('MULTIPLY'),
//                 ],
//               ),
//             ),
            
//             const SizedBox(height: 40),
            
//             // Result Card
//             Card(
//               elevation: 5,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               color: Colors.blue.shade50,
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   children: [
//                     const Text(
//                       'RESULT',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.blue,
//                         letterSpacing: 2,
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     Text(
//                       _result.isEmpty ? '0' : _result,
//                       style: const TextStyle(
//                         fontSize: 32,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black87,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
            
//             // Error Message (if any)
//             if (_errorMessage.isNotEmpty)
//               Padding(
//                 padding: const EdgeInsets.only(top: 20),
//                 child: Container(
//                   padding: const EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     color: Colors.red.shade50,
//                     borderRadius: BorderRadius.circular(8),
//                     border: Border.all(color: Colors.red.shade200),
//                   ),
//                   child: Row(
//                     children: [
//                       Icon(Icons.error_outline, color: Colors.red.shade700),
//                       const SizedBox(width: 10),
//                       Expanded(
//                         child: Text(
//                           _errorMessage,
//                           style: TextStyle(
//                             color: Colors.red.shade700,
//                             fontSize: 14,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }