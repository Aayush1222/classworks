import 'package:batch32b/screen/arithmetic_screen.dart';
import 'package:batch32b/screen/simple_interest.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 3, 86, 60),
          title: const Text('Dashboard'),
        ),
        body: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Action for first button
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ArithmeticScreen()),
                  );
                },
                child: const Text('Arithmetic Screen'),
              ),
              const SizedBox(height: 20), // Adding some space between buttons
              ElevatedButton(
                onPressed: () {
                  // Action for first button
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SimpleInterest()),
                  );
                },
                child: const Text('Simple Interest'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
