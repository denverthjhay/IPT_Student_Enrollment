import 'package:flutter/material.dart';

import '../models/student.dart';

class AdminProvider extends ChangeNotifier {
  final List<Student> _user = [];

  List<Student> get user => _user;

  void addStudent(Student student) {
    user.add(student);
    notifyListeners();
  }
}
