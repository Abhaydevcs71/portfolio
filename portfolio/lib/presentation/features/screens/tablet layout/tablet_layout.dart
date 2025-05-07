import 'package:flutter/material.dart';
import 'package:portfolio/presentation/features/widgets/contact_section_widget.dart';
import 'package:portfolio/presentation/features/widgets/footer.dart';
import 'package:portfolio/presentation/features/widgets/landing_page_widget.dart';
import 'package:portfolio/presentation/features/widgets/project_section_widget.dart';
import 'package:portfolio/presentation/features/widgets/what_i_can_do_widget.dart';
import 'package:portfolio/presentation/features/widgets/work_projects.dart';
import 'package:portfolio/presentation/utils/font_icon_sizes/font_icon_size.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height,
              width: size.width,
              child: LandingPageWidget(
                size: size,
                nameTitleSize: size.width * TabletSizes.nameTitleSize,
                mainTitleSize: size.width * TabletSizes.mainTitleSize,
                descSize: size.width * TabletSizes.titleDescSize,
                iconSize: size.width * TabletSizes.iconSize,
              ),
            ),
            WhatICanDoWidget(
              size: size,
              titleSize: size.width * TabletSizes.nameTitleSize,
              textSize: size.width * TabletSizes.titleDescSize,
            ),
            const WorkProjectsSection(),
            const ProjectsSection(),
            const ContactSectionWidget(),
            SizedBox(
              height: size.height * 0.02,
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
