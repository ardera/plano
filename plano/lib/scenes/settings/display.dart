import 'package:flutter/material.dart';
import 'package:plano/widgets/detail.dart';

class SettingsDisplayDetail extends StatelessWidget {
  const SettingsDisplayDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DetailWidget(
      child: Text('Display', style: theme.textTheme.displayLarge),
    );
  }
}
