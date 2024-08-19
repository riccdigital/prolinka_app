import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:prolinka_app/routes/app_router.gr.dart';
import 'package:prolinka_app/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProLinkaApp());
}

class ProLinkaApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ProLinka',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
