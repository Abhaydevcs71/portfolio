import 'package:flutter/material.dart';
import 'package:portfolio/presentation/utils/colors.dart';
import 'package:portfolio/static_data/static_data.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ConstrainedBox(constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [
          for(int i = 0;i < skillItems.length; i++)
          Chip(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16,
            ),
            backgroundColor: AppColors.greenColor,
            label: Text(skillItems[i]['title'],
            style: TextStyle(fontFamily: 'Poppins',color: AppColors.whiteColor),
            ),
            avatar: Image.asset(skillItems[i]['img']),
            )
        ],
      ),
      ),
    );
  }
}