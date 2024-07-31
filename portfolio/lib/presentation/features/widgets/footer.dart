import 'package:flutter/material.dart';
import 'package:portfolio/presentation/utils/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child:  Column(
        children: [
          Text(
            "Build by Abhay Dev with Flutter",
            
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              color: AppColors.greenColor,
            ),
          ),
          Text('abhaydevcs71@gmail.com',style: TextStyle(
            fontFamily: 'Poppins',
            color: AppColors.greenColor
          ),)
        ],
      ),
    );
  }
}
