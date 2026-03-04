import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../components/app_footer.dart';
import '../components/app_header.dart';
import '../dialogs/about_dialog.dart' as app_dialogs;
import '../dialogs/contact_dialog.dart' as app_dialogs_contact;
import '../models/designer.dart';
import '../theme/app_colors.dart';

class DesignerPage extends StatelessWidget {
  final Designer designer;
  final VoidCallback onBack;

  const DesignerPage({super.key, required this.designer, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgWhite,
      body: Column(
        children: [
          // 1. Header
          AppHeader(
            onAboutTap: () => showDialog(
              context: context,
              builder: (_) => const app_dialogs.AboutDialog(),
            ),
            onContactTap: () => showDialog(
              context: context,
              builder: (_) => const app_dialogs_contact.ContactDialog(),
            ),
          ),
          // Scrollable content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // 2. Breadcrumb Bar
                  _buildBreadcrumbBar(),
                  // 3. Content Area
                  _buildContentArea(),
                  // 4. Footer
                  const AppFooter(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBreadcrumbBar() {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onBack,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 14),
          color: AppColors.bgSurface,
          child: Row(
            children: [
              const Icon(
                LucideIcons.chevronLeft,
                size: 16,
                color: AppColors.accentRed,
              ),
              const SizedBox(width: 8),
              Text(
                'Back to Designers',
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.accentRed,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContentArea() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 3.1 Designer Info Section
          _buildDesignerInfoSection(),
          const SizedBox(height: 40),
          // 3.2 Divider
          Container(
            height: 1,
            width: double.infinity,
            color: AppColors.borderGray,
          ),
          const SizedBox(height: 40),
          // 3.3 Image Gallery Section
          _buildImageGallerySection(),
        ],
      ),
    );
  }

  Widget _buildDesignerInfoSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Designer Avatar
        Container(
          width: 320,
          height: 320,
          color: AppColors.bgSurface,
          alignment: Alignment.center,
          child: const Icon(
            LucideIcons.user,
            size: 48,
            color: AppColors.placeholderIcon,
          ),
        ),
        const SizedBox(width: 48),
        // Info Column
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Designer Name
              Text(
                designer.name,
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -1,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 20),
              // Meta Info
              Row(
                children: [
                  // Year Block
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Established',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textMuted,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        designer.year,
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 32),
                  // HQ Block
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Headquarter',
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textMuted,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        designer.headquarter,
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Biography Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Biography',
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textMuted,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    designer.biography,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Video Section
              Row(
                children: [
                  const Icon(
                    LucideIcons.playCircle,
                    size: 20,
                    color: AppColors.accentRed,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'Watch Studio Documentary',
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.accentRed,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildImageGallerySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Gallery Title
        Text(
          'Portfolio & Work',
          style: GoogleFonts.spaceGrotesk(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 24),
        // Gallery Grid — 2 rows of 2 images
        Column(
          children: [
            _buildGalleryRow(),
            const SizedBox(height: 20),
            _buildGalleryRow(),
          ],
        ),
      ],
    );
  }

  Widget _buildGalleryRow() {
    return Row(
      children: [
        Expanded(child: _buildImagePlaceholder()),
        const SizedBox(width: 20),
        Expanded(child: _buildImagePlaceholder()),
      ],
    );
  }

  Widget _buildImagePlaceholder() {
    return Container(
      height: 440,
      color: AppColors.bgSurface,
      alignment: Alignment.center,
      child: const Icon(
        LucideIcons.image,
        size: 32,
        color: AppColors.placeholderIcon,
      ),
    );
  }
}
