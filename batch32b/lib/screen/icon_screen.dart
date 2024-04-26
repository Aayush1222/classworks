import 'package:flutter/material.dart';

class IconScreen extends StatelessWidget {
  const IconScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Align children vertically centered
              children: [Icon(Icons.call), Text('Call')],
            ),
            SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Align children vertically centered
              children: [Icon(Icons.directions), Text('Route')],
            ),
            SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Align children vertically centered
              children: [Icon(Icons.share), Text('Share')],
            ),
          ],
        ),
      ),
    );
  }
}
