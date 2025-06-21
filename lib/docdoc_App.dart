import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ufire/core/routing/app_router.dart';
import 'package:ufire/core/routing/routers.dart';
import 'package:ufire/core/themes/colors.dart';

class DocDocApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();
  DocDocApp({super.key, required appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'DocDoc',
        theme: ThemeData(
          primaryColor: ColorsManager().primaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        onGenerateRoute: _appRouter.generateRoute,
        initialRoute: Routers.onBoardingScreen,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
