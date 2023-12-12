import 'package:flutter_application_12/Resultpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_12/colors.dart';

class Resultpage extends StatefulWidget {
  const Resultpage({super.key, required this.result});
  final double result;

  @override
  State<Resultpage> createState() => _ResultpageState();
}

class _ResultpageState extends State<Resultpage> {
  double res = 0.0;

  String getClass(val) {
    if (val >= 17 && val <= 18.5) {
      return 'Mild Thinness';
    } else if (val > 18.5 && val < 24) {
      return 'Normal';
    } else {
      return 'Overweight';
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Resultpage'),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined)),
        centerTitle: true,
      ),
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.result.toStringAsFixed(2),
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),
            Text(
              getClass(res),
              style: TextStyle(fontSize: 30, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
