import 'package:flutter/material.dart';
import 'package:portfolio/presentation/features/widgets/dev_skill_widget.dart';
import 'package:portfolio/presentation/features/widgets/skills_widget.dart';
import 'package:portfolio/presentation/utils/colors.dart';

class MobileWhatICanDoWidget extends StatelessWidget {
  final Size size;
  final double titleSize;
  final double textSize;
  const MobileWhatICanDoWidget({super.key, required this.size, required this.titleSize, required this.textSize});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: size.height *0.65,
      width: size.width,
      color: AppColors.whiteColor2,
      child:  Padding(
        padding:  EdgeInsets.only(top: size.height * 0.02),
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.05,),
            Center(
              child: Text('What I Can Do',
              style: TextStyle(
                      fontSize: titleSize,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      color: AppColors.greyColor2),
              ),
            ),
            DevSkillWidget(size: size,),
            SizedBox(height: size.height * 0.05,),
            const SkillsWidget()
          ],
        ),
      ),
    );
  }
}