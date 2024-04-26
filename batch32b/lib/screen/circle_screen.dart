import 'package:flutter/material.dart';
import 'package:batch32b/model/circle_model.dart'; // Import CircleModel

class CircleScreen extends StatefulWidget {
  const CircleScreen({super.key}); // Fix constructor syntax

  @override
  State<CircleScreen> createState() => _CircleScreenState();
}

class _CircleScreenState extends State<CircleScreen> {
  int? first;
  double? result;
  late Circle calcu;
  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade50,
      appBar: AppBar(
        title: const Text("Area of Circle"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: myKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter a Number";
                  }
                  // Check if the entered value is a valid integer
                  if (int.tryParse(value) == null) {
                    return "Enter a valid integer";
                  }
                  return null;
                },
                onChanged: (value) {
                  // Update 'first' when the value changes
                  first = int.tryParse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter the radius",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      setState(() {
                        calcu = Circle(
                            radius: first!
                                .toDouble()); // Convert int to double before initializing

                        result = calcu.calculateArea(); // Calculate the area
                      });
                    }
                  },
                  child: const Text(
                    'Calculate the area',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text("Area of Circle: ${result ?? 'N/A'}"),
            ],
          ),
        ),
      ),
    );
  }
}
