import 'package:flutter/material.dart';
import 'package:portfolio/presentation/features/screens/mobile%20layout/what_ican_do_mobile_widget.dart';
import 'package:portfolio/presentation/features/widgets/contact_section_widget.dart';
import 'package:portfolio/presentation/features/widgets/footer.dart';
import 'package:portfolio/presentation/features/widgets/landing_page_widget.dart';
import 'package:portfolio/presentation/features/widgets/project_section_widget.dart';
import 'package:portfolio/presentation/utils/font_icon_sizes/font_icon_size.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height,
                width: size.width,
                child: LandingPageWidget(
                  size: size,
                  nameTitleSize: size.width * MobileSizes.nameTitleSize,
                  mainTitleSize: size.width * MobileSizes.mainTitleSize,
                  descSize: size.width * MobileSizes.titleDescSize,
                  iconSize: size.width * MobileSizes.iconSize,
                ),
              ),
              MobileWhatICanDoWidget(
                size: size,
                titleSize: size.width * MobileSizes.nameTitleSize,
                textSize: size.width * MobileSizes.titleDescSize,
              ),
              ProjectsSection(),
              ContactSectionWidget(),
              SizedBox(
                height: size.height * 0.02,
              ),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
