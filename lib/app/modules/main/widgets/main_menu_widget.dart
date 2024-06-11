import 'package:flutter/material.dart';
import 'package:midfullife/utils/constants/colors.dart';

class MainMenuWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const MainMenuWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: TColors.grey200,
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: TColors.primary700,
            size: 24,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
