import 'package:flutter/material.dart';
import 'package:portfolio/presentation/features/widgets/contact_section_widget.dart';
import 'package:portfolio/presentation/features/widgets/footer.dart';
import 'package:portfolio/presentation/features/widgets/landing_page_widget.dart';
import 'package:portfolio/presentation/features/widgets/project_section_widget.dart';
import 'package:portfolio/presentation/features/widgets/what_i_can_do_widget.dart';
import 'package:portfolio/presentation/utils/font_icon_sizes/font_icon_size.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              
              height: size.height,
              width: size.width,
              child: LandingPageWidget(
                size: size,
                nameTitleSize: size.width * DesktopSizes.nameTitleSize,
                mainTitleSize: size.width * DesktopSizes.mainTitleSize,
                descSize: size.width * DesktopSizes.titleDescSize,
                iconSize: size.width * DesktopSizes.iconSize,
              ),
            ),
            WhatICanDoWidget(
              
              size: size,
              titleSize: size.width * DesktopSizes.nameTitleSize,
              textSize: size.width * DesktopSizes.titleDescSize,
            ),
            const ProjectsSection(),
            const ContactSectionWidget(),
            SizedBox(height: size.height * 0.02,),
            Footer()
          ],
        ),
      ),
    );
  }
}
