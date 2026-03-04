import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/app_colors.dart';

class AppHeader extends StatelessWidget {
  final VoidCallback onAboutTap;
  final VoidCallback onContactTap;

  const AppHeader({
    super.key,
    required this.onAboutTap,
    required this.onContactTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 12),
      decoration: const BoxDecoration(
        color: AppColors.bgWhite,
        border: Border(
          bottom: BorderSide(color: AppColors.borderGray, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              _NavLink(label: 'About', onTap: onAboutTap),
              const SizedBox(width: 32),
              _NavLink(label: 'Contact', onTap: onContactTap),
            ],
          ),
        ],
      ),
    );
  }
}

class _NavLink extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _NavLink({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
          ),
        ),
      ),
    );
  }
}
