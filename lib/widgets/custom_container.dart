import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.onTap, required this.color});

  final Function onTap;
  final Color color;

  @override
  Widget build(context) {
    return Expanded(
      child: Container(
        height: 50,
        color: color,
        child: GestureDetector(
          onTap: () {
            onTap();
          },
        ),
      ),
    );
  }
}
