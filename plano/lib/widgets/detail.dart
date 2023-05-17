import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  final Widget child;

  const DetailWidget({super.key, required this.child});

  @override
  build(BuildContext context) {
    const pad = 60.0;
    return Container(
      padding: const EdgeInsets.fromLTRB(pad, pad, pad, 0),
      child: child,
    );
  }
}
