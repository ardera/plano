/*

  Telephony Scene
  ---------------

*/

import 'package:flutter/material.dart';

class TelephonyScene extends StatelessWidget {
  const TelephonyScene({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.green,
      child: Center(
        child: Text('Telephony'),
      ),
    );
  }
}
