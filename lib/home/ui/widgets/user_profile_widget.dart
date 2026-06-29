import 'package:mubin/core/services/haptic_feedback.dart';
import 'package:flutter/material.dart';
import '../../../core/app_colors.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            hapticFeedBack();
            // User profile dialog maybe not needed for branding, 
            // but keeping it with a placeholder if needed
          },
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primaryTeal.withValues(alpha: 0.2), width: 1),
            ),
            child: const CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("assets/app_logos/mubin.png"),
              radius: 20,
            ),
          ),
        ),
        const SizedBox(width: 12),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Mubin",
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 20,
                color: AppColors.primaryTeal,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
