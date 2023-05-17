import 'package:flutter/material.dart';
import 'package:plano/director.dart';
import 'package:plano/stores/theme.dart';
import 'package:provider/provider.dart';

/*

  PlanoApp
  --------

  Base application

*/

class PlanoApp extends StatelessWidget {
  const PlanoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeStore>(
      builder: (context, store, child) {
        return MaterialApp(
          title: 'Plano',
          theme: store.theme,
          home: const DirectorControl(),
        );
      },
    );
  }
}
