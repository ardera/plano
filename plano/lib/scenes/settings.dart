/*

  Settings Scene
  --------------

*/

import 'package:flutter/material.dart';
import 'package:plano/scenes/settings/about.dart';
import 'package:plano/scenes/settings/bluetooth.dart';
import 'package:plano/scenes/settings/display.dart';
import 'package:plano/scenes/settings/wifi.dart';
import 'package:plano/widgets/source.dart';
import 'package:plano/widgets/split.dart';

class SettingsScene extends StatefulWidget {
  const SettingsScene({super.key});

  @override
  _SettingsScene createState() => _SettingsScene();
}

class _SettingsScene extends State<SettingsScene> {
  // Selected Tab
  var _index = 0;

  setIndex(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SplitViewWidget(
      source: SourceWidget(
        title: 'Settings',
        children: [
          SourceButton(
            icon: Icons.bluetooth,
            label: 'Bluetooth',
            selected: _index == 0,
            action: () => setIndex(0),
          ),
          SourceButton(
            icon: Icons.wifi,
            label: 'Wi-Fi',
            selected: _index == 1,
            action: () => setIndex(1),
          ),
          SourceButton(
            icon: Icons.monitor,
            label: 'Display',
            selected: _index == 2,
            action: () => setIndex(2),
          ),
          SourceButton(
            icon: Icons.info_outline,
            label: 'About',
            selected: _index == 3,
            action: () => setIndex(3),
          ),
        ],
      ),
      detail: IndexedStack(
        index: _index,
        children: const [
          SettingsBluetoothDetail(),
          SettingsWifiDetail(),
          SettingsDisplayDetail(),
          SettingsAboutDetail(),
        ],
      ),
    );
  }
}
