import 'package:flutter/material.dart';

class BodyPartProvider extends ChangeNotifier {
  final List<String> _selectedMuscles = [];

  List<String> get selectedMuscles => _selectedMuscles;
  bool isSelected(String bodyPart) => _selectedMuscles.contains(bodyPart);

  void toggleSelection(String bodyPart) {
    _selectedMuscles.contains(bodyPart)
        ? _selectedMuscles.remove(bodyPart)
        : _selectedMuscles.add(bodyPart);
    notifyListeners();
  }
}
