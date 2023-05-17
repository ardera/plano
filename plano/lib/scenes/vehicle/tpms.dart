import 'package:flutter/material.dart';
import 'package:plano/widgets/detail.dart';

class VehicleTPMSDetail extends StatelessWidget {
  const VehicleTPMSDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DetailWidget(
      child: Text('TPMS', style: theme.textTheme.displayLarge),
    );
  }
}
