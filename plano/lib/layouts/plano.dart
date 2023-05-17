import 'package:flutter/material.dart';
import 'package:plano/layouts/plano/dock.dart';
import 'package:plano/layouts/plano/stage.dart';

/*

  PlanoLayout
  -----------

  This is the master layout widget for placing the main controls
  in the right locations.

*/

class PlanoLayout extends StatelessWidget {
  const PlanoLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Stage()),
          Dock(),
        ],
      ),
    );
  }
}
