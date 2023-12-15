import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthpal/feature/auth/presentation/pages/sign_in_page.dart';
import 'package:healthpal/feature/auth/presentation/pages/splash_page.dart';
import 'package:healthpal/router/app_router_name.dart';

class AppRouter {
  static var navigationKey = GlobalKey<NavigatorState>();

  // static GoRouter get router => _router;

  static final GoRouter router = GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    // refreshListenable: GoRouterRefreshStream(stream),
    routes: <GoRoute>[
      GoRoute(
          path: '/',
          pageBuilder: (context, state) =>
              const MaterialPage(child: SplashPage()),
          routes: [
            GoRoute(
              path: 'sign-in',
              name: AppRouterName.signIn,
              pageBuilder: (context, state) =>
                  const MaterialPage(child: SignInPage()),
            )
          ]
          // builder: (context, state) => const SplashScreen(),
          ),
    ],
    // redirect: (context, state) {
    //   return null;
    // },
    errorPageBuilder: (context, state) => const MaterialPage(
        child: Scaffold(
      body: Center(child: Text('Error 404')),
    )),
  );
}

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
      (dynamic _) {
        notifyListeners();
      },
    );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
