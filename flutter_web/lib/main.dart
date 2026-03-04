import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'models/designer.dart';
import 'pages/designer_page.dart';
import 'pages/main_page.dart';
import 'theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: const AppShell(),
    );
  }
}

/// Root shell that manages navigation between main listing and designer detail.
class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  Designer? _selectedDesigner;

  @override
  Widget build(BuildContext context) {
    if (_selectedDesigner != null) {
      return DesignerPage(
        designer: _selectedDesigner!,
        onBack: () => setState(() => _selectedDesigner = null),
      );
    }

    return MainPage(
      onDesignerTap: (designer) => setState(() => _selectedDesigner = designer),
    );
  }
}
