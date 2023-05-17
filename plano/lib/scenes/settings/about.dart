import 'package:flutter/material.dart';
import 'package:plano/widgets/detail.dart';

class SettingsAboutDetail extends StatelessWidget {
  const SettingsAboutDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DetailWidget(
      child: Text("About", style: theme.textTheme.displayLarge),
    );
  }
}
