import 'package:batch32b/screen/dashboard.dart';
//import 'package:batch32b/screen/simple_interest.dart';

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SimpleInterest(),
      home: DashBoard(),
    );
  }
}
