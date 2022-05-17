import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1, 0.9],
            colors: [
              Color(0xFF1F3950),
              Color(0xFF0B1F36),
            ],
          ),
        ),
        child: child);
  }
}
