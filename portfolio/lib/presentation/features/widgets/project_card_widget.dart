import 'package:flutter/material.dart';
import 'package:portfolio/presentation/utils/colors.dart';
import 'package:portfolio/static_data/project_data.dart';
import 'dart:js' as js;

class ProjectCardWidget extends StatelessWidget {
  final ProjectUtils project;
  const ProjectCardWidget({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 350,
      width: 260,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.whiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // project img
          Image.asset(
            project.image,
            height: 140,
            width: 260,
            fit: BoxFit.cover,
          ),
          // title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: AppColors.greenColor,
              ),
            ),
          ),
          // subtitle
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: SizedBox(
              height: 100, // You can adjust this height as needed
              child: SingleChildScrollView(
                child: Text(
                  project.subtitle,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: AppColors.greyColor,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),
          // footer
          Container(
            height: 30,
            color: AppColors.greenColor,
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Text(
                  "Available on:",
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 10,
                  ),
                ),
                const Spacer(),
                if (project.gitLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.gitLink]);
                    },
                    child: Image.asset(
                      "assets/images/github.png",
                      width: 19,
                    ),
                  ),
                if (project.androidLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [project.androidLink]);
                      },
                      child: Image.asset(
                        color: Colors.green,
                        "assets/images/android_icon.png",
                        width: 17,
                      ),
                    ),
                  ),
                if (project.webLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [project.webLink]);
                      },
                      child: Image.asset(
                        "assets/images/web_icon.png",
                        width: 17,
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
