import 'package:flutter/material.dart';
import 'package:portfolio/presentation/features/screens/desktop%20layout/desktop_layout.dart';
import 'package:portfolio/presentation/features/screens/mobile%20layout/mobile_layout.dart';
import 'package:portfolio/presentation/features/screens/tablet%20layout/tablet_layout.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 950){
          return const DesktopLayout();
        }else if (constraints.maxWidth > 450){
          return const TabletLayout();
        }else {
          return const MobileLayout();
        }
      },
    );
  }
}
