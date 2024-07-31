import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/presentation/utils/colors.dart';
import 'package:portfolio/static_data/contact_links.dart';
import 'dart:js' as js;

class SocialIconsWidget extends StatelessWidget {
  const SocialIconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.greenColor.withOpacity(0.5))),
          child: Center(
            child: IconButton(
                hoverColor: AppColors.greyColor2,
                onPressed: () {
                  js.context.callMethod('open', [Contact.linkedin]);
                },
                icon:  FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: AppColors.greenColor,
                  size: 15,
                )),
          ),
        ),
        const SizedBox(width: 10,),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.greenColor.withOpacity(0.5))),
          child: Center(
            child: IconButton(
                hoverColor: AppColors.greyColor2,
                onPressed: () {
                  js.context.callMethod('open', [Contact.github]);
                },
                icon:  FaIcon(
                  FontAwesomeIcons.github,
                  color: AppColors.greenColor,
                  size: 15,
                )),
          ),
        ),
        const SizedBox(width: 10,),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.greenColor.withOpacity(0.5))),
          child: Center(
            child: IconButton(
                hoverColor: AppColors.greyColor2,
                onPressed: () {
                  js.context.callMethod('open', [Contact.upwork]);
                },
                icon:  FaIcon(
                  FontAwesomeIcons.upwork,
                  color: AppColors.greenColor,
                  size: 15,
                )),
          ),
        )
      ],
    );
  }
}
