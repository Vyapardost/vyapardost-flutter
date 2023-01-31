import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:vyapardost_flutter/route/route_name.dart';
import 'package:vyapardost_flutter/route/route_paths.dart';

import '../modules/onboarding/ui/onboarding_ui.dart';

class MyRouter {
  Future<GoRouter> appRouter({userObject, initialLink}) async {
    final router = GoRouter(debugLogDiagnostics: true, routes: [
      GoRoute(
        name: initialPage,
        path: initialRoute,
        pageBuilder: (context, state) {
          return CupertinoPage(
            key: state.pageKey,
            child: const OnboardingUI(),
          );
        },
      ),
    ]);

    return router;
  }
}
