import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            decoration: const BoxDecoration(
              color: Colors.amber,
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
