import 'package:flutter/material.dart';
import 'package:batch32b/screen/arithmetic_screen.dart';
import 'package:batch32b/screen/simple_interest.dart';
import 'package:batch32b/screen/circle_screen.dart'; // Import CircleScreen

class DashBoard extends StatelessWidget {
  const DashBoard({super.key}); // Fix constructor syntax

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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ArithmeticScreen()),
                  );
                },
                child: const Text('Arithmetic Screen'),
              ),
              const SizedBox(height: 20), // Adding space between buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SimpleInterestScreen()),
                  );
                },
                child: const Text('Simple Interest'),
              ),
              const SizedBox(height: 20), // Adding space between buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const CircleScreen()), // Navigate to CircleScreen
                  );
                },
                child: const Text(
                    'Circle Area Calculator'), // Text for the new button
              ),
            ],
          ),
        ),
      ),
    );
  }
}
