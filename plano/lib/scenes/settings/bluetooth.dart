import 'package:flutter/material.dart';
import 'package:plano/widgets/detail.dart';

class SettingsBluetoothDetail extends StatelessWidget {
  const SettingsBluetoothDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DetailWidget(
      child: Text('Bluetooth', style: theme.textTheme.displayLarge),
    );
  }
}
