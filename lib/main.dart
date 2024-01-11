import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:propay/src/core/core.dart';
import 'package:propay/src/features/authentication/presentation/pages/authentication_page.dart';

import 'src/features/authentication/presentation/pages/onboarding_page.dart';

void main() {
  runApp(const PropayApp());
}

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: PageRoutes.home,
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoardingPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: PageRoutes.authentication,
          builder: (BuildContext context, GoRouterState state) {
            return const AuthenticationPage();
          },
        ),
      ],
    ),
  ],
);

class PropayApp extends StatelessWidget {
  const PropayApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp.router(
            routerConfig: _router,
            debugShowCheckedModeBanner: false,
            title: 'Propay',
            theme: ThemeData(
              useMaterial3: true,
            ),
            // home: BlocProvider(
            //   create: (context) => CounterBloc(),
            //   child: const CounterPage(),
            // ),
          );
        });
  }
}
