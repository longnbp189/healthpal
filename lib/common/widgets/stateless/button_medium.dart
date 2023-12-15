import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthpal/design/app_color.dart';
import 'package:healthpal/design/spaces.dart';
import 'package:healthpal/design/typography.dart';

class ButtonMedium extends StatelessWidget {
  const ButtonMedium(
      {super.key,
      this.icon,
      required this.title,
      this.onTap,
      this.color = AppColor.primary});
  final Widget? icon;
  final String title;
  final VoidCallback? onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: (onTap == null) ? color!.withOpacity(0.7) : color!),
        child: (icon != null)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon ?? const SizedBox.shrink(),
                  spaceW8,
                  Text(
                    title,
                    style: TxtStyles.semiBold16.copyWith(color: AppColor.white),
                  ),
                ],
              )
            : Text(
                title,
                style: TxtStyles.semiBold16.copyWith(color: AppColor.white),
              ),
      ),
    );
  }
}
