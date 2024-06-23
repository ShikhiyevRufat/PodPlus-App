import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pod_plus/core/router/routes.dart';
import 'package:pod_plus/core/shared/presentation/components/inputs/buttons/app_button.dart';
import 'package:pod_plus/core/shared/presentation/components/inputs/fields/register_field.dart';
import 'package:pod_plus/core/shared/presentation/config/color_call.dart';
import 'package:pod_plus/core/shared/presentation/config/extensions/padding_ext.dart';
import 'package:pod_plus/features/auth/presentation/widget/google_sign_login.dart';
import 'package:pod_plus/features/auth/presentation/widget/switch_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isHidden = false;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

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
                  "assets/svg/email.svg",
                  height: 20,
                  width: 20,
                  fit: BoxFit.scaleDown,
                ),
                label: "Email",
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 300,
              child: RegisterField(
                leading: SvgPicture.asset(
                  "assets/svg/password.svg",
                  height: 20,
                  width: 20,
                  fit: BoxFit.scaleDown,
                ),
                label: "Password",
                trailing: GestureDetector(
                  onTap: _togglePasswordView,
                  child: SvgPicture.asset(
                    _isHidden
                        ? "assets/svg/visible.svg"
                        : "assets/svg/invisible.svg",
                    fit: BoxFit.scaleDown,
                    height: 20,
                    width: 20,
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                obsureText: _isHidden,
              ),
            ),
            const SizedBox(height: 30),
            AppButton(
              fontWeight: FontWeight.bold,
              label: "Login",
              color: context.secondaryColor,
              onPressed: () => context.push(Routes.sign),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    const SwitchButton(),
                    Text(
                      "Remember me",
                      style: context.textColor,
                    )
                  ],
                ),
                GestureDetector(
                    onTap: () => null,
                    child: Text(
                      "Forgot password?",
                      style: context.textColor,
                    ))
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            const GoogleSignLogin(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account?", style: context.textColor),
                SizedBox(width: 5.w),
                GestureDetector(
                  onTap: () => context.push(Routes.sign),
                  child: const Text(
                    "Sign up!",
                    style: TextStyle(
                      color: Color.fromARGB(255, 251, 114, 104),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ).scaffoldPadding,
    );
  }
}
