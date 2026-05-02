import 'package:flutter/material.dart';

class RelaxBackground extends StatelessWidget {
  const RelaxBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFF3E9D2), Color(0xFFE6DBC1), Color(0xFFD4C6A2)],
          ),
        ),
      ),
    );
  }
}
