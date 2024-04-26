import 'dart:ui';

import 'package:batch32b/model/simple_interest.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  final _formKey = GlobalKey<FormState>();
  SimpleInterestModel? simpleInterest;
  //late SimpleInterest simpleInterest;

  // Declare variables
  double? principle;
  double? rate;
  double? time;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Simple Interest"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    principle = double.tryParse(value);
                  });
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'principle',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter principle amount';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    rate = double.tryParse(value);
                  });
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'rate',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter rate';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    time = double.tryParse(value);
                  });
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  labelText: 'time',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter time';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        simpleInterest = SimpleInterestModel(
                            principle: principle!, rate: rate!, time: time!);
                        result = simpleInterest!.simp();
                      });
                    }
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Display information
              Text(
                'Simple Interest is : $result',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              RichText(
                  text: const TextSpan(
                text: '',
                style: TextStyle(color: Colors.black, fontSize: 30),
                children: <TextSpan>[
                  TextSpan(
                      text: 'M',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                        // backgroundColor: Colors.blue,
                      )),
                  TextSpan(
                    text: 'y name is Aayushmann  ',
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
