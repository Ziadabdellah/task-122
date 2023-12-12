
import 'package:flutter/material.dart';
import 'package:flutter_application_12/Bimtask12.dart';
import 'package:flutter_application_12/Resultpage.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
     
       home: Bmi(),
    );
  }
}