import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnmation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Image(image: AssetImage(AssetsData.logo)),
        const SizedBox(
          height: 20,
        ),
        SlidingText(
            animationController: animationController,
            slidingAnmation: slidingAnmation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    slidingAnmation =
        Tween<Offset>(begin: const Offset(0, 20), end: const Offset(0, 0))
            .animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.kHomeView);
      // Get.to(() => const HomeView(),
      //     transition: PageTransitionType.fade, duration: kPrimaryDuration);
    });
  }
}
