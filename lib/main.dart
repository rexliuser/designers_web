import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'router/app_router.dart';
import 'theme/app_colors.dart';

final _appRouter = AppRouter();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: '10 Asian Designers to Watch',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.accentRed,
          surface: AppColors.bgWhite,
        ),
        scaffoldBackgroundColor: AppColors.bgWhite,
        textTheme: GoogleFonts.interTextTheme(),
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
