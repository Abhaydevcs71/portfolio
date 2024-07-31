import 'package:flutter/material.dart';
import 'package:portfolio/presentation/utils/colors.dart';
import 'package:portfolio/static_data/static_data.dart';

class DevSkillWidget extends StatelessWidget {
  final Size size;
  const DevSkillWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return  ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 450,
          ),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: [
              for (int i = 0; i < platformItems.length; i++)
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: AppColors.greenColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    leading: Image.asset(
                      platformItems[i]["img"],
                      width: 26.0,
                    ),
                    title: Text(platformItems[i]["title"]),
                  ),
                )
            ],
          ),
        );
}
}

class CardWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Size size;
  const CardWidget({super.key, required this.icon, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.10,
      width: size.width * 0.20,
      decoration: BoxDecoration(
        color: AppColors.greyColor2,
        borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon,color: AppColors.whiteColor,),
          Text(
            
            text,style: TextStyle(
            
            color: AppColors.whiteColor,
            fontFamily: 'Poppins'
          ),)
        ],
      ),
    );
  }
}