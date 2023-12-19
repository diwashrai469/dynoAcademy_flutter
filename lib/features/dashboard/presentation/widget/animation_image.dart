import 'package:flutter/material.dart';
import '../../../../common/constant/app_image.dart';

class AnimationImage extends StatefulWidget {
  const AnimationImage({super.key});

  @override
  State<AnimationImage> createState() => _AnimationImageState();
}

class _AnimationImageState extends State<AnimationImage>
    with TickerProviderStateMixin {
  late Animation<double> logoAnimation;
  late AnimationController logoController;

  @override
  void initState() {
    logoController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    logoAnimation = Tween(begin: -50.0, end: 50.0).animate(
      CurvedAnimation(
        parent: logoController,
        curve: Curves.easeInOut,
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    logoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: logoController,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, logoAnimation.value / 4),
          child: Image.asset(
            AppImage.dashboardGirl,
          ),
        );
      },
    );
  }
}
