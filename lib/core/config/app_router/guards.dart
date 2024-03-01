import 'package:auto_route/auto_route.dart';
import 'package:clinic_tendik/core/config/app_router/auto_router.gr.dart';
import 'package:clinic_tendik/core/helpers/storage_helper.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final token = await StorageHelper.readData('token');
    if (token != null) {
      resolver.next(true);
    } else {
      router.push(const AuthPageRoute());
    }
  }
}
