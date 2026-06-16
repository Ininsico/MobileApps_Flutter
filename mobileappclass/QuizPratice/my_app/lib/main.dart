import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multiplication App',
      home: const MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  String result = '';

  void multiply() {
    setState(() {
      if (controller1.text.isNotEmpty && controller2.text.isNotEmpty) {
        double num1 = double.parse(controller1.text);
        double num2 = double.parse(controller2.text);
        double product = num1 * num2;
        result = 'Product is $product';
      } else {
        result = 'Please enter both numbers';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arslan'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controller1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter First Number',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controller2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter Second Number',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: multiply,
                child: const Text('Multiply'),
              ),
              const SizedBox(height: 20),
              Text(
                result.isEmpty ? 'Enter numbers and press Multiply' : result,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}