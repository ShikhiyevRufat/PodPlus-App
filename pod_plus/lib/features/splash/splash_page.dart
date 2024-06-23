import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:pod_plus/core/router/routes.dart';
import 'package:pod_plus/core/shared/presentation/config/color_call.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    final isLightMode = Theme.of(context).brightness == Brightness.light;
    return Scaffold(
      backgroundColor: context.primaryColor,
      body: Center(
        child: Lottie.asset(
          isLightMode
              ? "assets/animations/splash_light.json"
              : "assets/animations/splash_dark.json",
          height: 700.h,
          repeat: true,
          onLoaded: (loadingTime) {
            Future.delayed(
              loadingTime.duration,
              () {
                if (mounted) {
                  context.push(Routes.onboarding);
                }
              },
            );
          },
        ),
      ),
    );
  }
}
