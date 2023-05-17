import 'package:flutter/material.dart';
import 'package:plano/widgets/detail.dart';

class VehicleGaugesDetail extends StatelessWidget {
  const VehicleGaugesDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DetailWidget(
      child: Text('Gauges', style: theme.textTheme.displayLarge),
    );
  }
}
