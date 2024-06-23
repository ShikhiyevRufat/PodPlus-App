import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pod_plus/core/router/routes.dart';
import 'package:pod_plus/core/shared/presentation/components/inputs/buttons/app_button.dart';
import 'package:pod_plus/core/shared/presentation/components/inputs/fields/register_field.dart';
import 'package:pod_plus/core/shared/presentation/config/color_call.dart';

class UserNamePage extends StatelessWidget {
  const UserNamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(height: 60),
            Hero(
              tag: "discover_new_stories",
              child: Image.asset("assets/images/discover_new_stories.png"),
            ),
            SizedBox(height: 70.h),
            SizedBox(
              width: 300,
              child: RegisterField(
                obsureText: false,
                leading: SvgPicture.asset(
                  "assets/svg/username.svg",
                  height: 20,
                  width: 20,
                  fit: BoxFit.scaleDown,
                ),
                label: "Username",
                keyboardType: TextInputType.name,
              ),
            ),
            const Spacer(),
            AppButton(
              fontWeight: FontWeight.bold,
              label: "Sign up",
              color: context.secondaryColor,
              onPressed: () => context.push(Routes.mainPage),
            ),
            const SizedBox(height: 50,)
          ],
        ),
      )
    );
  }
}