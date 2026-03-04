import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/app_footer.dart';
import '../components/app_header.dart';
import '../components/designer_card.dart';
import '../dialogs/about_dialog.dart' as app_dialogs;
import '../dialogs/contact_dialog.dart' as app_dialogs_contact;
import '../models/designer.dart';
import '../theme/app_colors.dart';

class MainPage extends StatefulWidget {
  final void Function(Designer designer) onDesignerTap;

  const MainPage({super.key, required this.onDesignerTap});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static const List<String> _tabs = [
    'ALL',
    'MAINLAND CHINA',
    'HONG KONG',
    'JAPAN',
    'KOREA',
    'GEORGIA',
    'PHILIPPINES',
    'SINGAPORE',
    'THAILAND',
    'VIETNAM',
  ];

  String _selectedTab = 'ALL';

  List<Designer> get _filteredDesigners {
    if (_selectedTab == 'ALL') return sampleDesigners;
    return sampleDesigners.where((d) => d.region == _selectedTab).toList();
  }

  void _showAboutDialog() {
    showDialog(
      context: context,
      builder: (_) => const app_dialogs.AboutDialog(),
    );
  }

  void _showContactDialog() {
    showDialog(
      context: context,
      builder: (_) => const app_dialogs_contact.ContactDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final designers = _filteredDesigners;
    return Scaffold(
      backgroundColor: AppColors.bgWhite,
      body: Column(
        children: [
          // 1. Header
          AppHeader(
            onAboutTap: _showAboutDialog,
            onContactTap: _showContactDialog,
          ),
          // Main scrollable content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // 2. Hero Section
                  _buildHeroSection(),
                  // 3. Filter Bar
                  _buildFilterBar(),
                  // 4. Designer Card Grid
                  _buildDesignerGrid(designers),
                  // 5. Footer
                  const AppFooter(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeroSection() {
    return Container(
      width: double.infinity,
      color: AppColors.bgWhite,
      padding: const EdgeInsets.fromLTRB(48, 32, 48, 24),
      child: Column(
        children: [
          // Logo
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Logo Left
              Container(
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(10),
                color: AppColors.logoOrange,
                alignment: Alignment.center,
                child: Text(
                  'FASHION\nASIA\nHONG KONG',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    height: 1.3,
                    color: Colors.white,
                  ),
                ),
              ),
              // Logo Right
              Container(
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColors.logoOrange, width: 2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '10',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        color: AppColors.logoOrange,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'ASIAN\nDESIGNERS\nTO WATCH',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        height: 1.3,
                        color: AppColors.logoOrange,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Hero Title
          Text(
            '10 ASIAN DESIGNERS TO WATCH',
            textAlign: TextAlign.center,
            style: GoogleFonts.spaceGrotesk(
              fontSize: 32,
              fontWeight: FontWeight.w800,
              letterSpacing: 2,
              color: AppColors.logoOrange,
            ),
          ),
          const SizedBox(height: 16),
          // Hero Subtitle
          Text(
            '2025 POTENTIAL TALENTS',
            textAlign: TextAlign.center,
            style: GoogleFonts.spaceGrotesk(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              letterSpacing: 4,
              height: 1.5,
              color: AppColors.logoOrange,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterBar() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 48),
      decoration: const BoxDecoration(
        color: AppColors.bgWhite,
        border: Border(
          bottom: BorderSide(color: AppColors.borderGray, width: 1),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: _tabs.map((tab) => _buildTabItem(tab)).toList()),
      ),
    );
  }

  Widget _buildTabItem(String tab) {
    final isActive = _selectedTab == tab;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => setState(() => _selectedTab = tab),
        behavior: HitTestBehavior.opaque,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                tab,
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: isActive ? FontWeight.w500 : FontWeight.w400,
                  letterSpacing: 1,
                  color: isActive
                      ? AppColors.accentRed
                      : AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 4),
              Container(
                height: 3,
                width: tab.length * 7.0 + 20,
                color: isActive ? AppColors.accentRed : Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDesignerGrid(List<Designer> designers) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Calculate columns based on available width (target ~5 per row at 1440px)
          final availableWidth = constraints.maxWidth;
          const gap = 20.0;
          int crossAxisCount = 5;
          if (availableWidth < 1200) crossAxisCount = 4;
          if (availableWidth < 900) crossAxisCount = 3;
          if (availableWidth < 600) crossAxisCount = 2;
          if (availableWidth < 400) crossAxisCount = 1;

          final cardWidth =
              (availableWidth - (crossAxisCount - 1) * gap) / crossAxisCount;

          return Wrap(
            spacing: gap,
            runSpacing: gap,
            children: designers.map((designer) {
              return SizedBox(
                width: cardWidth,
                child: DesignerCard(
                  designer: designer,
                  onTap: () => widget.onDesignerTap(designer),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
