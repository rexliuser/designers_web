import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/app_colors.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
      decoration: const BoxDecoration(
        color: AppColors.bgSurface,
        border: Border(top: BorderSide(color: AppColors.borderGray, width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '© 2026 Fashion Asia Hong Kong. All rights reserved.',
            style: GoogleFonts.inter(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.textMuted,
            ),
          ),
          Text(
            'Organised by Hong Kong Design Centre',
            style: GoogleFonts.inter(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
