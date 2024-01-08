import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:propay/src/features/counter/bloc/counter_bloc.dart';
import 'package:propay/src/features/counter/presentation/pages/counter_page.dart';

void main() {
  runApp(const PropayApp());
}

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
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Propay',
            theme: ThemeData(
              useMaterial3: true,
            ),
            home: BlocProvider(
              create: (context) => CounterBloc(),
              child: const CounterPage(),
            ),
          );
        });
  }
}
