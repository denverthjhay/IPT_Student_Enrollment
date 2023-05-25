import 'package:flutter/material.dart';

class Student {
  String studentId;
  String password;
  String degreeProgram;
  String firstName;
  String lastName;
  String college;
  int yearLevel;

  Student({
    required this.studentId,
    required this.password,
    required this.degreeProgram,
    required this.firstName,
    required this.lastName,
    required this.college,
    required this.yearLevel,
  });
}
