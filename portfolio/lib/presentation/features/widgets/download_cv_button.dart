import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/presentation/utils/colors.dart';
import 'dart:js' as js;

import 'package:portfolio/static_data/contact_links.dart';


class DownloadCVButton extends StatefulWidget {
  
final double textSize;
final double iconSize;
  final Size size;
  
  const DownloadCVButton({
    super.key, required this.size, required this.textSize, required this.iconSize,
  });

  @override
  State<DownloadCVButton> createState() => _DownloadCVButtonState();
}

class _DownloadCVButtonState extends State<DownloadCVButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: InkWell(
        onTap: () {
         js.context.callMethod('open',[Contact.cvUrl]);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: widget.size.height*0.060,
          width:widget.size.width*0.4000,
          decoration: BoxDecoration(
            color: isHover ? AppColors.greenColor.withOpacity(0.5) : AppColors.whiteColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.greenColor.withOpacity(0.5)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Download CV",
                style: TextStyle(
                  fontSize: widget.textSize,
                  color: AppColors.greenColor),
              ),
              const SizedBox.square(dimension: 12),
              FaIcon(
                FontAwesomeIcons.download,
                color: AppColors.greenColor,
                size: widget.iconSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
