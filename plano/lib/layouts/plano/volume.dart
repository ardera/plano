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
    return Consumer<SettingsStore>(
      builder: (context, settings, child) {
        final icon = (settings.isMuted)
            ? Icons.volume_off_rounded
            : Icons.volume_up_rounded;

        return Container(
          width: 150,
          padding: const EdgeInsets.only(left: 15),
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
      },
    );
  }
}

class VolumeButton extends StatelessWidget {
  const VolumeButton(this.icon, this.action, {super.key});

  final IconData icon;
  final Function action;

  @override
  Widget build(BuildContext context) {
    final bottomAppBarTheme = BottomAppBarTheme.of(context);

    return Container(
      height: 40,
      width: 40,
      margin: const EdgeInsets.only(right: 5),
      child: Material(
        color: bottomAppBarTheme.color,
        child: InkWell(
          // ignore: unnecessary_lambdas
          onTap: () => action(),
          borderRadius: BorderRadius.circular(6),
          child: Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
