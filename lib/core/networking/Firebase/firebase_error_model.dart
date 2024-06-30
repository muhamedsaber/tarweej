import 'package:flutter/material.dart';

class FirebaseErrorModel{
  final String code;
  final String message;
  final IconData icon;
  final String? errorDescription;
  FirebaseErrorModel({required this.message,required this.icon,required this.code,
    this.errorDescription
  });
}