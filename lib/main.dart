import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vodafone_ui/main_container.dart';
import 'package:vodafone_ui/shared/constants.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Vodafone UI',
          theme: ThemeData(
            appBarTheme: const AppBarTheme(color: AppColors.vodafoneCultured),
            fontFamily: AppStrings.baseFontFamily,
            primaryColor: AppColors.vodafoneCultured,
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFF6D707A),
              primary: const Color(0xFF6D707A),
            ).copyWith(
              background: Colors.white,
            ),
          ),
          home: const MainContainer(),
        );
      },
    );
  }
}
