import 'package:mubin/core/app_colors.dart';
import 'package:mubin/core/services/haptic_feedback.dart';
import 'package:flutter/material.dart';

class TasbeehCounterWidget extends StatelessWidget {
  final int count;
  final VoidCallback onTap;
  final VoidCallback onReset;

  const TasbeehCounterWidget({
    super.key,
    required this.count,
    required this.onTap,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        GestureDetector(
          onTap: () {
            hapticFeedBack();
            onTap();
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Outer Glow
              Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryTeal.withAlpha(20),
                ),
              ),
              // Main Button
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(
                    colors: [AppColors.primaryTeal, AppColors.darkTeal],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primaryTeal.withAlpha(100),
                      blurRadius: 15,
                      offset: const Offset(0, 8),
                    )
                  ],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$count",
                        style: const TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "TAP",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withAlpha(150),
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 32),
        // Reset Button
        IconButton(
          onPressed: () {
            hapticFeedBack();
            onReset();
          },
          icon: const Icon(Icons.refresh_rounded),
          color: isDark ? Colors.white60 : Colors.black45,
          iconSize: 28,
          tooltip: "Reset Counter",
        ),
      ],
    );
  }
}
