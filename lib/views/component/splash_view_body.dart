import 'package:booklyapp/core/constants/colors.dart';
import 'package:booklyapp/core/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController anmiationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    anmiationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, _) {
            return SlideTransition(
              position: slidingAnimation,
              child: const Text(style: TextStyle(color: white),
                'Read Free Books',
                textAlign: TextAlign.center,
              ),
            );
          },
        )
      ],
    );
  }

  void initSlidingAnimation() {
    anmiationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(anmiationController);
    anmiationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        GoRouter.of(context).push('/home');

      },
    );
  }
}
