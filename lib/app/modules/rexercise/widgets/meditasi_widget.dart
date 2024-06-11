import 'package:flutter/material.dart';
import 'package:midfullife/utils/constants/colors.dart';

class MeditasiWidget extends StatelessWidget {
  const MeditasiWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.img,
  });

  final String title, subtitle, img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: TColors.grey50,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(1, 2),
            blurRadius: 12,
            spreadRadius: -1,
            color: Colors.black.withOpacity(0.1),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(
                width: 200,
                child: Text(
                  subtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ],
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}