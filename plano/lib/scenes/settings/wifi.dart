import 'package:flutter/material.dart';
import 'package:plano/widgets/detail.dart';

class SettingsWifiDetail extends StatelessWidget {
  const SettingsWifiDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DetailWidget(
      child: Text('Wi-Fi', style: theme.textTheme.displayLarge),
    );
  }
}
