import 'package:freetaksiapp/core/init/router/app_router.dart';
import 'package:freetaksiapp/core/init/router/auth_guard.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<AppRouter>(AppRouter(authGuard: AuthGuard()));
}