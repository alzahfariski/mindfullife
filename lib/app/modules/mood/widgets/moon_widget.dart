import 'package:flutter/material.dart';

class MoonWidgets extends StatelessWidget {
  const MoonWidgets({
    super.key,
    required this.title,
    required this.color,
  });

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 70,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
