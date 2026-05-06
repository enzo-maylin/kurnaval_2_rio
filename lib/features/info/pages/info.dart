import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_typography.dart';

// TODO : page d'exemple, à remplacer par une vraie page d'informations du carnaval, avec des détails, des conseils, etc.
class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

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
                  'ℹ️ Informations',
                  style: AppTypography.heading1(AppColors.warning),
                ),
              ],
            ),
            SizedBox(height: AppSpacing.lg),
            Text(
              'Tout ce que vous devez savoir',
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
                    AppColors.warning.withOpacity(0.15),
                    AppColors.warning.withOpacity(0.05),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                border: Border.all(
                  color: AppColors.warning.withOpacity(0.3),
                  width: 1.5,
                ),
                borderRadius: AppSpacing.borderRadiusXl,
              ),
              child: Column(
                children: [
                  Text('📚', style: TextStyle(fontSize: 48)),
                  SizedBox(height: AppSpacing.lg),
                  Text(
                    'Informations générales',
                    style: AppTypography.heading3(AppColors.warning),
                  ),
                  SizedBox(height: AppSpacing.md),
                  Text(
                    'Détails et informations importantes',
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
