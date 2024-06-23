import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pod_plus/core/router/routes.dart';
import 'package:pod_plus/core/shared/presentation/components/inputs/buttons/app_button.dart';
import 'package:pod_plus/core/shared/presentation/config/color_call.dart';
import 'package:pod_plus/core/shared/presentation/config/sizes.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/onboarding_bg.png"), fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 180),
            Image.asset("assets/images/podplus_logo.png", height: 100),
            Hero(
              tag: "discover_new_stories",
              child: Image.asset("assets/images/discover_new_stories.png"),
            ),
            const SizedBox(height: 80),
            AppButton(
              fontWeight: FontWeight.bold,
              color: context.secondaryColor,
              label: "Sign up",
              radius: Sizes.xl,
              size: Sizes.xl,
              onPressed: () => context.push(Routes.sign),
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have account?", style: context.textColor),
                SizedBox(width: 5.w),
                GestureDetector(
                  onTap: () => context.push(Routes.login),
                  child: const Text("Login", style: TextStyle(color: Color.fromARGB(255, 251, 114, 104))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
