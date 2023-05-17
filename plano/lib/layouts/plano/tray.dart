/*

  Clock
  -----

*/

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:plano/layouts/plano/status.dart';
import 'package:plano/stores/settings.dart';
import 'package:provider/provider.dart';

// Padding to edge of display
const kPadEdge = 30.0;

// Padding between time and icons
const kPadInner = 17.0;

class Tray extends StatelessWidget {
  const Tray({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsStore>(
      builder: (builder, settings, child) {
        final widgets = [
          const Expanded(child: TrayDateTime()),
          const TrayStatus(),
        ];

        return Container(
          width: 250,
          padding: const EdgeInsets.only(left: kPadEdge, right: kPadEdge),
          child: Row(
            children:
                settings.isRightHandDrive ? widgets : widgets.reversed.toList(),
          ),
        );
      },
    );
  }
}

class TrayDateTime extends StatefulWidget {
  const TrayDateTime({super.key});

  @override
  _TrayDateTimeState createState() => _TrayDateTimeState();
}

class _TrayDateTimeState extends State<TrayDateTime> {
  DateTime _now = DateTime.now();
  late Timer _timer;

  @override
  void initState() {
    _updateClock();
    super.initState();
  }

  void _updateClock() {
    setState(() {
      _now = DateTime.now();
      _timer = Timer(
        const Duration(minutes: 1) -
            Duration(seconds: _now.second) -
            Duration(milliseconds: _now.millisecond),
        _updateClock,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsStore>(
      builder: (builder, settings, child) {
        final style = Theme.of(context).textTheme;

        final alignment = (settings.isRightHandDrive)
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start;

        return Container(
          padding: const EdgeInsets.only(left: kPadInner, right: kPadInner),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: alignment,
            children: [
              Text(
                DateFormat('h:mm a').format(_now),
                style: style.headlineSmall,
              ),
              Text(
                DateFormat('E d').format(_now).toUpperCase(),
                style: style.titleLarge,
              ),
            ],
          ),
        );
      },
    );
  }
}
