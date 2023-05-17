/*

  Stage
  -----

  Container for the app scenes.

*/

import 'package:flutter/material.dart';
import 'package:plano/scenes/audio.dart';
import 'package:plano/scenes/navigation.dart';
import 'package:plano/scenes/settings.dart';
import 'package:plano/scenes/telephony.dart';
import 'package:plano/scenes/vehicle.dart';
import 'package:plano/stores/scene.dart';
import 'package:provider/provider.dart';

class Stage extends StatelessWidget {
  const Stage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SceneStore>(
      builder: (context, scene, child) {
        return IndexedStack(
          index: scene.index,
          children: const [
            SettingsScene(),
            VehicleScene(),
            TelephonyScene(),
            AudioScene(),
            NavigationScene(),
          ],
        );
      },
    );
  }
}
