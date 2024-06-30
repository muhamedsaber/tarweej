import 'package:flutter/material.dart';

class FirebaseErrorModel{
  final String code;
  final String message;
  final IconData icon;
  FirebaseErrorModel({required this.message,required this.icon,required this.code});
}