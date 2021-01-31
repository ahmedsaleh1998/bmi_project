import 'package:bmi2/person.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InformationProvider extends InheritedWidget {
  Person person;
  Widget child;
  InformationProvider({this.child});
  @override
  bool updateShouldNotify(InformationProvider oldWidget) {
    return oldWidget.person != person;
  }

  static InformationProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType();
}
