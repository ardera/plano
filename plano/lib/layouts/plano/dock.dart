/*

  Dock
  ----

  Persistant container at bottom of the display. Contains the clock, now playing
  and the scene switcher.

*/

import 'package:flutter/material.dart';
import 'package:plano/layouts/plano/switcher.dart';
import 'package:plano/layouts/plano/tray.dart';
import 'package:plano/layouts/plano/volume.dart';
import 'package:plano/stores/settings.dart';
import 'package:provider/provider.dart';

class Dock extends StatelessWidget {
  const Dock({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsStore>(
      builder: (context, settings, child) {
        final widgets = [
          const VolumeControl(),
          const Expanded(child: SceneSwitcher()),
          const Tray(),
        ];

        return Container(
          color: BottomAppBarTheme.of(context).color,
          height: 100,
          child: Row(
            children: (settings.isRightHandDrive)
                ? widgets
                : widgets.reversed.toList(),
          ),
        );
      },
    );
  }
}
