import 'package:flutter/material.dart';

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');

  String? trimToken() => contains(":") ? split(":")[1].trim() : this;
  String? trimSpaces() => replaceAll(" ", "");
  String removeSpacesAndLower() => replaceAll(' ', '').toLowerCase();
  String get first => split(" ")[0];
}

extension Greetings on String {
  String get greetFirstName {
    final hour = TimeOfDay.now().hour;
    String timeOfDay = "";
    if (hour <= 12) {
      timeOfDay = "Morning";
    } else if (hour <= 17) {
      timeOfDay = "Afternoon";
    } else {
      timeOfDay = "Evening";
    }
    return "Good $timeOfDay, ${split(" ")[0]}";
  }
}
