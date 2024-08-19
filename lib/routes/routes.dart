import 'package:auto_route/auto_route.dart';
import 'package:prolinka_app/views/home_view.dart';
import 'package:prolinka_app/views/login_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginView, initial: true),
    AutoRoute(page: HomeView),
  ],
)
class $AppRouter {}
