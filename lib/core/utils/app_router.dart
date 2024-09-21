import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:bookly_app/helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        pageBuilder: (context, state) {
          return  CustomTransitionPage(
            transitionDuration:  kPrimaryDuration,
            child: const HomeView(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity:CurveTween(curve: Curves.easeIn).animate(animation),
                child: child,
              );
            },
          );
        }
      ),
    ],
  );
}
