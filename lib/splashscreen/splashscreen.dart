import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pnp/pages/homepage1.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(child: Lottie.asset('images/loadingdelivery.json')),
      nextScreen: ScreenOne(),
      duration: 6000,
      backgroundColor: Colors.white,
      splashIconSize: 400,
    );
  }
}
