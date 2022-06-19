import 'package:auto_route/auto_route.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    // final token = await CacheManager.instance.getCacheData(key: AppConstants.TOKEN_KEY);
    // if(token != null){
    //   WebReqService.instance.setToken(token);
    //   resolver.next(true);
    // }else{
    //      router.replaceNamed(NavigationConstants.LOGIN);
    //      }
     }
}