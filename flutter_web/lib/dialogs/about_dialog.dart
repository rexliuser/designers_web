import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../theme/app_colors.dart';

class AboutDialog extends StatelessWidget {
  const AboutDialog({super.key});

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
                      'About',
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
              Flexible(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Paragraph 1 (lead)
                        Text(
                          '10 Asian Designers to Watch is an annual initiative by '
                          'Fashion Asia Hong Kong, spotlighting the most promising '
                          'emerging fashion talent across the Asia-Pacific region.',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1.6,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        const SizedBox(height: 16),
                        // Paragraph 2
                        Text(
                          'Each year, an esteemed panel of international fashion '
                          'leaders — including editors, buyers, creative directors, '
                          'and industry veterans — evaluates a curated shortlist of '
                          'designers based on creative vision, craftsmanship, '
                          'cultural relevance, and commercial potential.',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1.6,
                            color: AppColors.textSecondary,
                          ),
                        ),
                        const SizedBox(height: 16),
                        // Paragraph 3
                        Text(
                          'The selected designers represent the diversity, innovation, '
                          'and extraordinary talent shaping the future of Asian fashion '
                          'on the global stage. From experimental knitwear to '
                          'couture-level tailoring, these are the names redefining '
                          'what it means to design in Asia today.',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1.6,
                            color: AppColors.textSecondary,
                          ),
                        ),
                        const SizedBox(height: 16),
                        // Paragraph 4
                        Text(
                          'This platform serves as a digital showcase — browse the '
                          'collection, learn each designer\'s story, and discover '
                          'the next generation of fashion visionaries.',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1.6,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
