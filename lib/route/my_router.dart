import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:vyapardost_flutter/modules/business_registration/ui/business_details_ui.dart';
import 'package:vyapardost_flutter/modules/business_registration/ui/gst_login_seller_ui.dart';
import 'package:vyapardost_flutter/modules/register/ui/buyer_vs_seller_ui.dart';
import 'package:vyapardost_flutter/modules/register/ui/change_email_ui.dart';
import 'package:vyapardost_flutter/modules/register/ui/email_verify_ui.dart';
import 'package:vyapardost_flutter/modules/register/ui/enter_mail_to_reset_password_ui.dart';
import 'package:vyapardost_flutter/modules/register/ui/enter_mobile_number_ui.dart';
import 'package:vyapardost_flutter/modules/register/ui/enter_otp_ui.dart';
import 'package:vyapardost_flutter/modules/register/ui/reset_password_ui.dart';
import 'package:vyapardost_flutter/modules/register/ui/signup_form_page.dart';
import 'package:vyapardost_flutter/route/route_name.dart';
import 'package:vyapardost_flutter/route/route_paths.dart';

import '../modules/business_registration/ui/gst_login_buyer_ui.dart';
import '../modules/business_registration/ui/gst_otp_ui.dart';
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
      GoRoute(
        name: loginPage,
        path: loginRoute,
        pageBuilder: (context, state) {
          return CupertinoPage(
            key: state.pageKey,
            child: const SignUpFormUI(),
          );
        },
      ),
      GoRoute(
        name: emailVerifyPage,
        path: emailVerifyRoute,
        pageBuilder: (context, state) {
          return CupertinoPage(
            key: state.pageKey,
            child: const EmailVerifyUI(),
          );
        },
      ),
      GoRoute(
        name: enterMobilePage,
        path: enterMobileRoute,
        pageBuilder: (context, state) {
          return CupertinoPage(
            key: state.pageKey,
            child: EnterMobileNumberUI(),
          );
        },
      ),
      GoRoute(
        name: enterOtpPage,
        path: enterOtpRoute,
        pageBuilder: (context, state) {
          return CupertinoPage(
            key: state.pageKey,
            child: EnterOtpUI(),
          );
        },
      ),
      GoRoute(
        name: buyerVsSellerPage,
        path: buyerVsSellerRoute,
        pageBuilder: (context, state) {
          return CupertinoPage(
            key: state.pageKey,
            child: const BuyerVsSeller(),
          );
        },
      ),
      GoRoute(
        name: enterMailToPasswordPage,
        path: enterMailToPasswordRoute,
        pageBuilder: (context, state) {
          return CupertinoPage(
            key: state.pageKey,
            child: EnterMailToResetPasswordUI(),
          );
        },
      ),
      GoRoute(
        name: resetPasswordPage,
        path: resetPasswordRoute,
        pageBuilder: (context, state) {
          return CupertinoPage(
            key: state.pageKey,
            child: ResetPasswordUI(),
          );
        },
      ),
      GoRoute(
        name: changeMailPage,
        path: changeMailRoute,
        pageBuilder: (context, state) {
          return CupertinoPage(
            key: state.pageKey,
            child: ChangeEmailUI(),
          );
        },
      ),
      GoRoute(
        name: gstLoginSellerPage,
        path: gstLoginSellerRoute,
        pageBuilder: (context, state) {
          return CupertinoPage(
            key: state.pageKey,
            child: GSTLoginSellerUI(),
          );
        },
      ),
      GoRoute(
        name: gstLoginBuyerPage,
        path: gstLoginBuyerRoute,
        pageBuilder: (context, state) {
          return CupertinoPage(
            key: state.pageKey,
            child: GSTLoginBuyerUI(),
          );
        },
      ),
      GoRoute(
        name: gstOtpPage,
        path: gstOtpRoute,
        pageBuilder: (context, state) {
          return CupertinoPage(
            key: state.pageKey,
            child: GSTOtpUI(),
          );
        },
      ),
      GoRoute(
        name: businessDetailsPage,
        path: businessDetailsRoute,
        pageBuilder: (context, state) {
          return CupertinoPage(
            key: state.pageKey,
            child: BusinessDetailsUI(),
          );
        },
      ),
    ]);

    return router;
  }
}
