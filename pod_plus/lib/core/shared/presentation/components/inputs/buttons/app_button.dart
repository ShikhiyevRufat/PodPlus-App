import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pod_plus/core/shared/presentation/animations/bouncing_animation.dart';
import 'package:pod_plus/core/shared/presentation/config/extensions/border_radius_ext.dart';
import 'package:pod_plus/core/shared/presentation/config/extensions/button_size_ext.dart';
import 'package:pod_plus/core/shared/presentation/config/extensions/font_size_ext.dart';
import 'package:pod_plus/core/shared/presentation/config/extensions/icon_size_ext.dart';
import 'package:pod_plus/core/shared/presentation/config/sizes.dart';
import '../../../config/fonts.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.size = Sizes.xl,
    this.fontSize = Sizes.l,
    this.fontWeight = FontWeight.normal,
    this.iconSize = Sizes.m,
    this.outlined = false,
    this.radius = Sizes.infinite,
    this.color = Colors.grey,
    this.secondaryColor = Colors.white,
    this.label,
    this.onPressed,
    this.isLoading = false,
    this.leadingIcon,
    this.trailingIcon,
  });
  final String? label;
  final FontWeight fontWeight;
  final Sizes size;
  final Sizes fontSize;
  final Sizes radius;
  final Sizes iconSize;
  final Color color;
  final bool outlined;
  final bool isLoading;

  final Color secondaryColor;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return BouncingAnimation(
      duration: const Duration(milliseconds: 200),
      child: FilledButton(
        style: outlined
            ? OutlinedButton.styleFrom(
                minimumSize: size.buttonSize,
                backgroundColor: secondaryColor,
                maximumSize: size.buttonSize,
                foregroundColor: color,
                disabledBackgroundColor: secondaryColor.withOpacity(.5),
                disabledForegroundColor: color.withOpacity(.53),
                side: BorderSide(
                  color: color,
                ),
              )
            : FilledButton.styleFrom(
                minimumSize: size.buttonSize,
                backgroundColor: color,
                maximumSize: size.buttonSize,
                foregroundColor: secondaryColor,
                disabledBackgroundColor: color.withOpacity(0.5),
                disabledForegroundColor: secondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: radius.borderRadius,
                ),
              ),
        onPressed: isLoading ? null : onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leadingIcon != null)
              Icon(
                leadingIcon,
                size: iconSize.iconSize,
              ),
            if (leadingIcon != null && label != null) 8.horizontalSpace,
            if (isLoading)
              SizedBox(
                height: 20.h,
                width: 20.h,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(
                      outlined ? color : secondaryColor),
                ),
              ),
            if (isLoading) 8.horizontalSpace,
            if (label != null)
              Text(
                label!,
                style: TextStyle(
                  fontSize: fontSize.fontSize,
                  fontFamily: Fonts.body,
                  fontWeight: fontWeight,
                ),
              ),
            if (trailingIcon != null) 8.horizontalSpace,
            if (trailingIcon != null)
              Icon(
                trailingIcon,
                size: iconSize.iconSize,
              ),
          ],
        ),
      ),
    );
  }
}
