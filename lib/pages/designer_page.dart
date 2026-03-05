import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/app_footer.dart';
import '../components/app_header.dart';
import '../dialogs/about_dialog.dart' as app_dialogs;
import '../dialogs/contact_dialog.dart' as app_dialogs_contact;
import '../models/designer.dart';
import '../theme/app_colors.dart';

@RoutePage()
class DesignerPage extends StatefulWidget {
  final String designerId;

  const DesignerPage({super.key, @pathParam required this.designerId});

  @override
  State<DesignerPage> createState() => _DesignerPageState();
}

class _DesignerPageState extends State<DesignerPage> {
  late final Designer? designer = sampleDesigners
      .where((d) => d.id == widget.designerId)
      .firstOrNull;

  Future<void> _launchVideoUrl() async {
    final url = designer?.videoUrl;
    if (url != null && url.isNotEmpty) {
      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (designer == null) {
      return Scaffold(
        backgroundColor: AppColors.bgWhite,
        body: Center(
          child: Text(
            'Designer not found.',
            style: GoogleFonts.spaceGrotesk(
              fontSize: 20,
              color: AppColors.textSecondary,
            ),
          ),
        ),
      );
    }
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
          // 2. Breadcrumb Bar
          _buildBreadcrumbBar(),
          // Scrollable content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // 3. Content Area
                  _buildContentArea(),
                ],
              ),
            ),
          ),
          // 4. Footer — always pinned to bottom
          const AppFooter(),
        ],
      ),
    );
  }

  Widget _buildBreadcrumbBar() {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => context.router.maybePop(),
        behavior: HitTestBehavior.opaque,
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
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 3.1 Designer Info Section
              _buildDesignerInfoSection(isMobile: isMobile),
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
      },
    );
  }

  Widget _buildDesignerInfoSection({bool isMobile = false}) {
    if (isMobile) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Designer Avatar (full width, square crop)
          AspectRatio(
            aspectRatio: 1,
            child: designer!.profileImage != null
                ? Image.asset(
                    designer!.profileImage!,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : Container(
                    width: double.infinity,
                    color: AppColors.bgSurface,
                    alignment: Alignment.center,
                    child: const Icon(
                      LucideIcons.user,
                      size: 48,
                      color: AppColors.placeholderIcon,
                    ),
                  ),
          ),
          const SizedBox(height: 24),
          // Info Column
          _buildDesignerInfoColumn(),
        ],
      );
    }
    return _buildDesignerInfoWeb();
  }

  Widget _buildDesignerInfoWeb() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Designer Avatar — 320×320, square crop
        SizedBox(
          width: 320,
          height: 320,
          child: designer!.profileImage != null
              ? Image.asset(
                  designer!.profileImage!,
                  width: 320,
                  height: 320,
                  fit: BoxFit.cover,
                )
              : Container(
                  color: AppColors.bgSurface,
                  alignment: Alignment.center,
                  child: const Icon(
                    LucideIcons.user,
                    size: 48,
                    color: AppColors.placeholderIcon,
                  ),
                ),
        ),
        const SizedBox(width: 48),
        // Info Column
        Expanded(child: _buildDesignerInfoColumn()),
      ],
    );
  }

  Widget _buildDesignerInfoColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Designer Name
        Text(
          designer!.name ?? '',
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
            if (designer!.year != null)
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
                    designer!.year!,
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
            if (designer!.year != null && designer!.headquarter != null)
              const SizedBox(width: 32),
            // HQ Block
            if (designer!.headquarter != null)
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
                    designer!.headquarter!,
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
        if (designer!.biography != null)
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
                designer!.biography!,
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        if (designer!.biography != null) const SizedBox(height: 20),
        // Video Section
        if (designer!.videoUrl != null && designer!.videoUrl!.isNotEmpty)
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: _launchVideoUrl,
              behavior: HitTestBehavior.opaque,
              child: Row(
                mainAxisSize: MainAxisSize.min,
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
            ),
          ),
      ],
    );
  }

  Widget _buildImageGallerySection() {
    final images = designer!.images;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Portfolio & Work',
          style: GoogleFonts.spaceGrotesk(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 24),
        if (images != null && images.isNotEmpty)
          _buildDynamicImageGrid(images)
        else
          _buildImagePlaceholder(),
      ],
    );
  }

  Widget _buildDynamicImageGrid(List<String> images) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final int columns = width < 600
            ? 2
            : width < 1000
            ? 3
            : 4;
        const gap = 12.0;
        final itemWidth = (width - gap * (columns - 1)) / columns;

        return Wrap(
          spacing: gap,
          runSpacing: gap,
          children: images
              .map(
                (img) => SizedBox(
                  width: itemWidth,
                  child: Image.asset(img, fit: BoxFit.contain),
                ),
              )
              .toList(),
        );
      },
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
