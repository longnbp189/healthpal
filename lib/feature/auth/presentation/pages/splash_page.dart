import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthpal/common/widgets/stateless/icon_widget.dart';
import 'package:healthpal/design/app_asset.dart';
import 'package:healthpal/design/app_color.dart';
import 'package:healthpal/design/spaces.dart';
import 'package:healthpal/design/typography.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // initBox();
    // _messagingServices.init(context);

    Future.delayed(
      const Duration(seconds: 3),
      () async {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        final bool? isFirst = prefs.getBool('isFirst');
        final bool? isEmployer = prefs.getBool('isEmployer');
        //  final SharedPreferences prefs =
        //         await SharedPreferences.getInstance();
        //     await prefs.setBool('isFirst', true);
        if (isFirst == true) {
          if (isEmployer == true) {
            // serviceLocator<LoginUsecase>().checkIfUserLoggedIn().then((user) =>
            //     context.pushReplacementNamed(user != null
            //         ? AppRouterName.home
            //         : AppRouterName.loginEmployer));
          } else {
            // serviceLocator<LoginUsecase>().checkIfUserLoggedIn().then((user) =>
            //     context.pushReplacementNamed(
            //         user != null ? AppRouterName.home : AppRouterName.login));
          }
        } else {
          // if (mounted) {
          //   context.pushReplacementNamed(AppRouterName.intro);
          // }
        }
      },
    );
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //   statusBarIconBrightness:
    //       Brightness.dark, // You can customize the default icon color
    // ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage(AppAsset.splash), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, AppColor.black.withOpacity(0.8)],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Your other widgets go here
                IconWidget(
                  icon: AppAsset.logo,
                  size: 66.r,
                  color: AppColor.backgroundWhite,
                ),
                spaceH16,
                Text('HealthPal',
                    style: TxtStyles.regular20
                        .copyWith(color: AppColor.backgroundWhite)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
