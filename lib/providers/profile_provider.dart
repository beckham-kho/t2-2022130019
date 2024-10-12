import 'package:flutter/material.dart';
import 'package:t2_2022130019/models/profile.dart';

class ProfileProvider extends ChangeNotifier {
  final Profile _profile = Profile(name: 'John Doe');
  Profile get profile => _profile;

  void editProfile(Profile profile) {
    _profile.name = profile.name;
    notifyListeners();
  }
}