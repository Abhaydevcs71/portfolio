import 'package:flutter/material.dart';

import 'package:portfolio/presentation/features/widgets/social_icons_widget.dart';

class ContactSectionWidget extends StatelessWidget {
  const ContactSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),

          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 300,
            ),
            child: const Divider(),
          ),
          const SizedBox(height: 15),
          SocialIconsWidget(),

          // SNS icon button links
          // Wrap(
          //   spacing: 12,
          //   runSpacing: 12,
          //   alignment: WrapAlignment.center,
          //   children: [
          //     InkWell(
          //       onTap: () {
          //         js.context.callMethod('open', [SnsLinks.github]);
          //       },
          //       child: Image.asset(
          //         "assets/github.png",
          //         width: 28,
          //       ),
          //     ),
          //     InkWell(
          //       onTap: () {
          //         js.context.callMethod('open', [SnsLinks.linkedIn]);
          //       },
          //       child: Image.asset(
          //         "assets/linkedin.png",
          //         width: 28,
          //       ),
          //     ),
          //     InkWell(
          //       onTap: () {
          //         js.context.callMethod('open', [SnsLinks.facebook]);
          //       },
          //       child: Image.asset(
          //         "assets/facebook.png",
          //         width: 28,
          //       ),
          //     ),
          //     InkWell(
          //       onTap: () {
          //         js.context.callMethod('open', [SnsLinks.instagram]);
          //       },
          //       child: Image.asset(
          //         "assets/instagram.png",
          //         width: 28,
          //       ),
          //     ),
          //     InkWell(
          //       onTap: () {
          //         js.context.callMethod('open', [SnsLinks.telegram]);
          //       },
          //       child: Image.asset(
          //         "assets/telegram.png",
          //         width: 28,
          //       ),
          //     ),
          //   ],
          // )
      ],
    );
  }
}