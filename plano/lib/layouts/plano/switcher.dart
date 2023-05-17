/*

  Scene Switcher
  --------------

*/

import 'package:flutter/material.dart';
import 'package:plano/stores/scene.dart';
import 'package:plano/stores/settings.dart';
import 'package:provider/provider.dart';

class SceneSwitcher extends StatelessWidget {
  const SceneSwitcher({super.key});

  static const iconList = [
    Icons.settings_outlined,
    Icons.directions_car_outlined,
    Icons.phone_outlined,
    Icons.music_note_outlined,
    Icons.map_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Consumer2<SceneStore, SettingsStore>(
      builder: (context, scene, settings, child) {
        final controls = [
          SwitcherButton(
            icon: Icons.settings_outlined,
            theme: theme,
            selected: scene.isSettingsScene(),
            action: scene.showSettingsScene,
          ),
          SwitcherButton(
            icon: Icons.directions_car_outlined,
            theme: theme,
            selected: scene.isVehicleScene(),
            action: scene.showVehicleScene,
          ),
          SwitcherButton(
            icon: Icons.phone_outlined,
            theme: theme,
            selected: scene.isTelephonyScene(),
            action: scene.showTelephonyScene,
          ),
          SwitcherButton(
            icon: Icons.music_note_outlined,
            theme: theme,
            selected: scene.isAudioScene(),
            action: scene.showAudioScene,
          ),
          SwitcherButton(
            icon: Icons.map_outlined,
            theme: theme,
            selected: scene.isNavigationScene(),
            action: scene.showNavigationScene,
          ),
        ];

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: settings.isRightHandDrive
                ? controls
                : controls.reversed.toList(),
          ),
        );
      },
    );
  }
}

class SwitcherButton extends StatelessWidget {
  const SwitcherButton({
    super.key,
    required this.icon,
    required this.theme,
    required this.selected,
    required this.action,
  });

  final IconData icon;
  final bool selected;
  final ThemeData theme;
  final Function action;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(6);

    final bottomAppBarColor = BottomAppBarTheme.of(context).color;
    final background = selected ? Colors.white : bottomAppBarColor;
    final foreground = selected ? bottomAppBarColor : Colors.white;

    return SizedBox(
      height: 40,
      width: 40,
      child: Material(
        color: background,
        borderRadius: radius,
        child: InkWell(
          borderRadius: radius,
          // ignore: unnecessary_lambdas
          onTap: () => action(),
          child: Icon(icon, color: foreground, size: 30),
        ),
      ),
    );
  }
}
