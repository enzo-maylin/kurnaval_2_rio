import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_typography.dart';

// TODO : page d'exemple, à remplacer par une vraie page d'informations du carnaval, avec des détails, des conseils, etc.
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: AppSpacing.pagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Text(
                  '📞 Contact',
                  style: AppTypography.heading1(AppColors.accent),
                ),
              ],
            ),
            SizedBox(height: AppSpacing.lg),
            Text(
              'Nous contacter facilement',
              style: AppTypography.bodyMedium(
                Theme.of(context).brightness == Brightness.dark
                    ? AppColors.darkMuted
                    : AppColors.lightMuted,
              ),
            ),
            SizedBox(height: AppSpacing.xxxl),

            // Placeholder content
            Container(
              width: double.infinity,
              padding: AppSpacing.cardPadding,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.accent.withOpacity(0.15),
                    AppColors.accent.withOpacity(0.05),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                border: Border.all(
                  color: AppColors.accent.withOpacity(0.3),
                  width: 1.5,
                ),
                borderRadius: AppSpacing.borderRadiusXl,
              ),
              child: Column(
                children: [
                  Text('💬', style: TextStyle(fontSize: 48)),
                  SizedBox(height: AppSpacing.lg),
                  Text(
                    'Formulaire de contact',
                    style: AppTypography.heading3(AppColors.accent),
                  ),
                  SizedBox(height: AppSpacing.md),
                  Text(
                    'Une meilleure façon de nous joindre',
                    style: AppTypography.bodyMedium(
                      Theme.of(context).brightness == Brightness.dark
                          ? AppColors.darkMuted
                          : AppColors.lightMuted,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
