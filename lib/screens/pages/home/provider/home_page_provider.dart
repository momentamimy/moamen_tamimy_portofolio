import 'package:flutter/material.dart';

class HomePageProvider extends ChangeNotifier{
  bool _isHiTextAnimationFinished = false;

  bool get isHiTextAnimationFinished => _isHiTextAnimationFinished;

  hiTextAnimationFinished() {
    _isHiTextAnimationFinished = true;
    notifyListeners();
  }

  bool _isNameTextAnimationFinished = false;

  bool get isNameTextAnimationFinished => _isNameTextAnimationFinished;

  nameTextAnimationFinished() {
    _isNameTextAnimationFinished = true;
    notifyListeners();
  }

  bool _isTitleTextAnimationFinished = false;

  bool get isTitleTextAnimationFinished => _isTitleTextAnimationFinished;

  titleTextAnimationFinished() {
    _isTitleTextAnimationFinished = true;
    notifyListeners();
  }
}