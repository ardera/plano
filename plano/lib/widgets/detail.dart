import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({super.key, required this.child});

  final Widget child;

  @override
  build(BuildContext context) {
    const pad = 60.0;
    return Container(
      padding: const EdgeInsets.fromLTRB(pad, pad, pad, 0),
      child: child,
    );
  }
}
