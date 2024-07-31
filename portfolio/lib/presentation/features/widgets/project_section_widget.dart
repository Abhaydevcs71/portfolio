import 'package:flutter/material.dart';
import 'package:portfolio/presentation/features/widgets/project_card_widget.dart';
import 'package:portfolio/presentation/utils/colors.dart';
import 'package:portfolio/static_data/project_data.dart';



class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: AppColors.whiteColor2,
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          // Work projects title
           Text(
            "Projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.greenColor,
            ),
          ),
          const SizedBox(height: 50),
          // Work projects cards
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < projects.length; i++)
                  ProjectCardWidget(
                    project: projects[i],
                  ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
