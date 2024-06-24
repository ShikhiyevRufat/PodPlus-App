import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pod_plus/core/router/routes.dart';
import 'package:pod_plus/core/shared/presentation/components/inputs/buttons/app_button.dart';
import 'package:pod_plus/core/shared/presentation/components/inputs/fields/register_field.dart';
import 'package:pod_plus/core/shared/presentation/config/color_call.dart';
import 'package:pod_plus/features/auth/presentation/widget/google_sign_login.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
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
              label: "Next",
              color: context.secondaryColor,
              onPressed: () => context.push(Routes.userName),
            ),
            SizedBox(
              height: 20.h,
            ),
            const GoogleSignLogin(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have account?", style: context.textColor),
                SizedBox(width: 5.w),
                GestureDetector(
                  onTap: () => context.pushReplacement(Routes.login),
                  child: const Text(
                    "Login!",
                    style: TextStyle(
                      color: Color.fromARGB(255, 251, 114, 104),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
