import 'package:bookly_app/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:bookly_app/helper/constants.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: SplashViewBody(),
    );
  }
}