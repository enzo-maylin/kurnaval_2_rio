import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_typography.dart';

// TODO : page d'exemple, à remplacer par une vraie page de calendrier du carnaval, avec les dates des événements, des descriptions, etc.
class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

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
                  '📅 Calendrier',
                  style: AppTypography.heading1(AppColors.primary),
                ),
              ],
            ),
            SizedBox(height: AppSpacing.lg),
            Text(
              'Tous les événements du carnaval',
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
                    AppColors.primary.withOpacity(0.15),
                    AppColors.primary.withOpacity(0.05),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                border: Border.all(
                  color: AppColors.primary.withOpacity(0.3),
                  width: 1.5,
                ),
                borderRadius: AppSpacing.borderRadiusXl,
              ),
              child: Column(
                children: [
                  Text('🗓️', style: TextStyle(fontSize: 48)),
                  SizedBox(height: AppSpacing.lg),
                  Text(
                    'Calendrier en construction',
                    style: AppTypography.heading3(AppColors.primary),
                  ),
                  SizedBox(height: AppSpacing.md),
                  Text(
                    'La grille des événements arrive bientôt',
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
