import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_typography.dart';

// TODO : page d'exemple, à remplacer par une vraie page de lexique du carnaval, avec des termes, des définitions, etc.
class LexiconPage extends StatelessWidget {
  const LexiconPage({super.key});

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
                  '📚 Lexique',
                  style: AppTypography.heading1(AppColors.chart5),
                ),
              ],
            ),
            SizedBox(height: AppSpacing.lg),
            Text(
              'Le vocabulaire du carnaval',
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
                    AppColors.chart5.withOpacity(0.15),
                    AppColors.chart5.withOpacity(0.05),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                border: Border.all(
                  color: AppColors.chart5.withOpacity(0.3),
                  width: 1.5,
                ),
                borderRadius: AppSpacing.borderRadiusXl,
              ),
              child: Column(
                children: [
                  Text('🎭', style: TextStyle(fontSize: 48)),
                  SizedBox(height: AppSpacing.lg),
                  Text(
                    'Dictionnaire carnaval',
                    style: AppTypography.heading3(AppColors.chart5),
                  ),
                  SizedBox(height: AppSpacing.md),
                  Text(
                    'Termes et expressions du carnaval expliqués',
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
