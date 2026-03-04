import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../theme/app_colors.dart';

class ContactDialog extends StatelessWidget {
  const ContactDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: 600,
          decoration: BoxDecoration(
            color: AppColors.bgWhite,
            border: Border.all(color: AppColors.borderGray, width: 1),
            boxShadow: const [
              BoxShadow(
                color: Color(0x200D0D0D),
                blurRadius: 32,
                offset: Offset(0, 8),
              ),
            ],
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // 1. Dialog Header
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: AppColors.borderGray, width: 1),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Contact',
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: const Icon(
                          LucideIcons.x,
                          size: 20,
                          color: AppColors.textMuted,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // 2. Dialog Body
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Introduction Paragraph
                    Text(
                      'Fashion Asia Hong Kong is organised by Hong Kong Design '
                      'Centre (HKDC), a non-governmental organisation established '
                      'in 2001 to champion design and innovation.',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 1.6,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Email Row
                    _buildContactRow(
                      icon: LucideIcons.mail,
                      text: 'info@fashionasiahk.com',
                    ),
                    const SizedBox(height: 20),
                    // Phone Row
                    _buildContactRow(
                      icon: LucideIcons.phone,
                      text: '+852 2522 8688',
                    ),
                    const SizedBox(height: 20),
                    // WhatsApp Row
                    _buildContactRow(
                      icon: LucideIcons.messageCircle,
                      text: '+852 9123 4567',
                    ),
                    const SizedBox(height: 20),
                    // Social Row
                    Row(
                      children: const [
                        Icon(
                          LucideIcons.facebook,
                          size: 20,
                          color: AppColors.textSecondary,
                        ),
                        SizedBox(width: 16),
                        Icon(
                          LucideIcons.instagram,
                          size: 20,
                          color: AppColors.textSecondary,
                        ),
                        SizedBox(width: 16),
                        Icon(
                          LucideIcons.youtube,
                          size: 20,
                          color: AppColors.textSecondary,
                        ),
                        SizedBox(width: 16),
                        Icon(
                          LucideIcons.linkedin,
                          size: 20,
                          color: AppColors.textSecondary,
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

  Widget _buildContactRow({required IconData icon, required String text}) {
    return Row(
      children: [
        Icon(icon, size: 18, color: AppColors.accentRed),
        const SizedBox(width: 12),
        Text(
          text,
          style: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }
}
