// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHome(),
//     );
//   }
// }

// class MyHome extends StatefulWidget {
//   MyHome({super.key});

//   @override
//   State<MyHome> createState() => Homer();
// }

// class Homer extends State<MyHome> {
//   // Controller for the first TextField
//   TextEditingController inputController = TextEditingController();
//   // Controller for the second TextField (will display capital letters)
//   TextEditingController outputController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     // Add listener to input controller
//     inputController.addListener(() {
//       // Update output controller with capitalized text
//       outputController.text = inputController.text.toUpperCase();
//       // Move cursor to the end of the text
//       outputController.selection = TextSelection.fromPosition(
//         TextPosition(offset: outputController.text.length),
//       );
//     });
//   }

//   @override
//   void dispose() {
//     // Clean up controllers
//     inputController.dispose();
//     outputController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('TextField Capitalization Example'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // First TextField - User input
//             TextField(
//               controller: inputController,
//               decoration: InputDecoration(
//                 labelText: 'Enter text here',
//                 border: OutlineInputBorder(),
//                 hintText: 'Type something...',
//               ),
//             ),
//             SizedBox(height: 20),
//             // Second TextField - Automatically shows capitalized text
//             TextField(
//               controller: outputController,
//               decoration: InputDecoration(
//                 labelText: 'Capitalized text',
//                 border: OutlineInputBorder(),
//                 hintText: 'Text will appear in caps',
//               ),
//               readOnly: true, // Make it read-only since it's automatically updated
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }