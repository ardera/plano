/*

  Passenger Volume Control
  ------------------------

*/

import 'package:flutter/material.dart';
import 'package:plano/stores/settings.dart';
import 'package:provider/provider.dart';

class VolumeControl extends StatelessWidget {
  const VolumeControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsStore>(builder: (context, settings, child) {
      final icon = (settings.isMuted)
          ? Icons.volume_off_rounded
          : Icons.volume_up_rounded;

      return Container(
        width: 250,
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                VolumeButton(Icons.remove, settings.decreaseVolume),
                VolumeButton(icon, settings.toggleMute),
                VolumeButton(Icons.add, settings.increaseVolume),
              ],
            ),
          ],
        ),
      );
    });
  }
}

class VolumeButton extends StatelessWidget {
  final IconData icon;
  final Function action;

  const VolumeButton(this.icon, this.action, {super.key});

  @override
  Widget build(BuildContext context) {
    final bottomAppBarTheme = BottomAppBarTheme.of(context);

    return Container(
      height: 52,
      width: 52,
      margin: const EdgeInsets.only(right: 15),
      child: Material(
        color: bottomAppBarTheme.color,
        child: InkWell(
          onTap: () {
            action();
          },
          borderRadius: BorderRadius.circular(6),
          child: Icon(
            icon,
            color: Colors.white,
            size: 36,
          ),
        ),
      ),
    );
  }
}
