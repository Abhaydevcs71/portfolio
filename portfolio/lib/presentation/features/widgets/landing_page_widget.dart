import 'package:flutter/material.dart';
import 'package:portfolio/presentation/features/widgets/download_cv_button.dart';
import 'package:portfolio/presentation/utils/colors.dart';

class LandingPageWidget extends StatelessWidget {
  final double nameTitleSize, mainTitleSize, descSize, iconSize;
  final Size size;
  const LandingPageWidget({
    super.key,
    required this.size,
    required this.nameTitleSize,
    required this.mainTitleSize,
    required this.descSize,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: size.width * 0.13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "I am Abhay Dev",
                style: TextStyle(
                    fontSize: nameTitleSize,
                    fontFamily: 'Poppins',
                    color: AppColors.greyColor2),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                  color: AppColors.greenColor,
                  fontSize: mainTitleSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: size.width * 0.5,
                child: Text(
                  "Innovative Flutter Developer creating high-quality mobile and web applications. Delivers seamless and engaging user experiences, driven by a passion for technological innovation and excellence.",
                  style: TextStyle(
                    fontSize: descSize,
                    color: AppColors.greyColor2,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              DownloadCVButton(
                size: size,
                textSize: descSize,
                iconSize: iconSize,
              )
            ],
          ),
        ),
        Positioned(
            left: size.width * 0.5,
            bottom: size.height * 0.05,
            child: ScrollDownIndicator(
              size: size,
            ))
      ],
    );
  }
}

class ScrollDownIndicator extends StatefulWidget {
  final Size size;
  const ScrollDownIndicator({super.key, required this.size});

  @override
  _ScrollDownIndicatorState createState() => _ScrollDownIndicatorState();
}

class _ScrollDownIndicatorState extends State<ScrollDownIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween(begin: 0.0, end: 10.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 1, color: AppColors.greenColor)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.keyboard_arrow_down,
                  size: widget.size.height * 0.040,
                  color: AppColors.greenColor),
              SizedBox(height: _animation.value),
              Icon(Icons.keyboard_arrow_down,
                  size: widget.size.height * 0.040,
                  color: AppColors.greenColor),
            ],
          ),
        );
      },
    );
  }
}
