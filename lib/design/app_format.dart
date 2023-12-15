import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthpal/design/app_asset.dart';
import 'package:healthpal/design/app_color.dart';
import 'package:healthpal/design/spaces.dart';
import 'package:healthpal/design/typography.dart';

class Distance {
  final double la;
  final double lo;

  Distance(this.la, this.lo);
}

class AppFormat {
  static void showSnackBar(BuildContext context, String name, int type,
      {int duration = 2}) {
    Color? color;
    String? iconPath;
    switch (type) {
      case 0:
        color = AppColor.red;
        iconPath = AppAsset.fail;
        break;
      case 1:
        color = AppColor.yellow;
        iconPath = AppAsset.warning;
        break;
      case 2:
        color = const Color.fromARGB(255, 50, 176, 111);
        iconPath = AppAsset.success;
        break;
    }

    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: Duration(seconds: duration),
      backgroundColor: color,
      content: Row(
        children: [
          SvgPicture.asset(
            iconPath!,
            color: AppColor.white,
            height: 24.r,
            width: 24.r,
          ),
          spaceW8,
          Flexible(
              child: Text(name,
                  style: TxtStyles.regular14.copyWith(color: Colors.white))),
        ],
      ),
    ));
  }

  static bool validateEmail(String email) {
    RegExp regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (regex.hasMatch(email)) {
      return true;
    } else {
      return false;
    }
  }
}
