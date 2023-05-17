/*

  Settings Store
  --------------

*/

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Preference Keys
const pVehicleRhd = 'vehicle_rhd';
const pVolumeLevel = 'volume_level';
const pVolumeMuted = 'volume_muted';

class SettingsStore extends ChangeNotifier {
  SettingsStore() {
    setupPrefrences();
  }

  // Vehicle Settings
  late bool isRightHandDrive = true;

  // Volume Control
  late int volumeLevel = 20;
  late bool isMuted = false;

  // Preferences Storage
  late SharedPreferences preferences;

  void setupPrefrences() async {
    // Load up shared preferences
    preferences = await SharedPreferences.getInstance();

    // Set as default or from storage
    isRightHandDrive = preferences.getBool(pVehicleRhd) ?? isRightHandDrive;
    volumeLevel = preferences.getInt(pVolumeLevel) ?? volumeLevel;
    isMuted = preferences.getBool(pVolumeMuted) ?? isMuted;
    notifyListeners();
  }

  // Global Vehicle Settings
  void setIsRightHandDrive({required bool isRight}) {
    isRightHandDrive = isRight;
    notifyListeners();
  }

  // Volume Control
  void unmuteSound() {
    isMuted = false;
    preferences.setBool(pVolumeMuted, isMuted);
    preferences.setInt(pVolumeLevel, volumeLevel);
    notifyListeners();
  }

  void toggleMute() {
    isMuted = !isMuted;
    preferences.setBool(pVolumeMuted, isMuted);
    notifyListeners();
  }

  void increaseVolume() {
    debugPrint('$volumeLevel');
    if (volumeLevel < 30) {
      volumeLevel++;
    }
    unmuteSound();
  }

  void decreaseVolume() {
    if (volumeLevel > 0) {
      volumeLevel--;
    }
    unmuteSound();
  }
}
