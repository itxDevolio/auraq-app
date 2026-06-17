import 'package:auraq/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class KhatamProgressCard extends StatelessWidget {
  final int lastReadPage;
  final VoidCallback onTap;

  const KhatamProgressCard({
    super.key,
    required this.lastReadPage,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    // Safety check for calculation
    final validPage = lastReadPage.clamp(0, 604);
    final double percentage = validPage / 604.0;
    final int percentInt = (percentage * 100).round();

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20), // Standardized clean radius
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
        decoration: BoxDecoration(
          gradient: isDark
              ? const LinearGradient(
                  colors: [AppColors.darkTeal, AppColors.primaryTeal],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : LinearGradient(
                  colors: [
                    AppColors.primaryTeal.withOpacity(0.05),
                    AppColors.primaryTeal.withOpacity(0.01),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isDark
                ? AppColors.primaryTeal.withOpacity(0.25)
                : AppColors.primaryTeal.withOpacity(0.12),
            width: 1,
          ),
          boxShadow: isDark
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 16,
                    offset: const Offset(0, 8),
                  ),
                ]
              : [],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // Clean Minimal Icon Container
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: isDark
                        ? Colors.white.withOpacity(0.08)
                        : AppColors.primaryTeal.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    FlutterIslamicIcons.solidQuran2,
                    // Premium looking book icon
                    color: isDark ? Colors.white : AppColors.primaryTeal,
                    size: 16,
                  ),
                ),
                const SizedBox(width: 12),

                // Title Typography Clean Up
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "QURAN COMPLETION JOURNEY",
                        // Pure premium English standard
                        style: TextStyle(
                          color: isDark
                              ? AppColors.textSecondaryDark
                              : AppColors.textSecondaryLight,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2, // Clean modern tracking
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Page $validPage of 604",
                        style: GoogleFonts.poppins(
                          color: isDark
                              ? AppColors.textPrimaryDark
                              : AppColors.textPrimaryLight,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ],
                  ),
                ),

                // Pill Badge
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: isDark
                        ? Colors.white.withOpacity(0.08)
                        : AppColors.lightTeal.withOpacity(0.12),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "$percentInt%",
                    style: const TextStyle(
                      color: AppColors.lightTeal,
                      fontWeight: FontWeight.w700,
                      fontSize: 11,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Minimal Progress Bar
            LinearProgressIndicator(
              value: percentage,
              backgroundColor: isDark
                  ? Colors.white.withOpacity(0.1)
                  : AppColors.primaryTeal.withOpacity(0.08),
              valueColor: const AlwaysStoppedAnimation<Color>(
                AppColors.lightTeal,
              ),
              minHeight: 6,
              // Made slightly thinner for a sleek look
              borderRadius: BorderRadius.circular(10),
            ),
            const SizedBox(height: 18),

            // Action Row
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Continue Reading",
                  style: TextStyle(
                    color: isDark
                        ? AppColors.textPrimaryDark
                        : AppColors.primaryTeal,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    letterSpacing: 0.2,
                  ),
                ),
                const SizedBox(width: 6),
                Icon(
                  Icons.arrow_forward_ios_rounded, // Sleeker minimal arrow
                  size: 11,
                  color: isDark
                      ? AppColors.textPrimaryDark
                      : AppColors.primaryTeal,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
