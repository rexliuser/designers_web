import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../models/designer.dart';
import '../theme/app_colors.dart';

class DesignerCard extends StatelessWidget {
  final Designer designer;
  final VoidCallback onTap;

  const DesignerCard({super.key, required this.designer, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.bgWhite,
            border: Border.all(color: AppColors.borderGray, width: 1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          // 1. Thumbnail
          Container(
            height: 160,
            width: double.infinity,
            color: AppColors.bgSurface,
            alignment: Alignment.center,
            child: const Icon(
              LucideIcons.image,
              size: 32,
              color: AppColors.placeholderIcon,
            ),
          ),
          // 2. Card Content
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 2.1 Designer Name
                Text(
                  designer.name ?? '',
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 6),
                // 2.2 Meta Row
                Row(
                  children: [
                    Text(
                      designer.year ?? '',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        designer.headquarter ?? '',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textSecondary,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                // 2.3 Biography
                Text(
                  designer.biography ?? '',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 1.4,
                    color: AppColors.textSecondary,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),
                // 2.4 View Profile Link
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'View Profile',
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.accentRed,
                      ),
                    ),
                    const SizedBox(width: 6),
                    const Icon(
                      LucideIcons.arrowRight,
                      size: 14,
                      color: AppColors.accentRed,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
        ),
      ),
    );
  }
}
