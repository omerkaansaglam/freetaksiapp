import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:freetaksiapp/core/constants/navigation/navigation_constants.dart';
import 'package:freetaksiapp/core/init/router/auth_guard.dart';
import 'package:freetaksiapp/features/home/view/home_view.dart';
import 'package:freetaksiapp/features/login/view/login_view.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage,initial: true, path: NavigationConstants.LOGIN),
    AutoRoute(page: HomePage, path: NavigationConstants.HOME,guards: [AuthGuard]),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {
  AppRouter({required super.authGuard});
}