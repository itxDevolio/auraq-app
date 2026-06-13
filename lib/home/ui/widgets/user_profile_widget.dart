import 'package:auraq/core/services/haptic_feedback.dart';
import 'package:auraq/home/ui/widgets/user_profile_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/app_colors.dart';

class UserProfileWidget extends StatelessWidget {
  String name;
  String pUrl;

  UserProfileWidget({super.key, required this.name, required this.pUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Assalam o Alaikum",
        style: TextStyle(fontWeight: FontWeight.w200, fontSize: 12),
      ),
      subtitle: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      trailing: GestureDetector(
        onTap: () {
hapticFeedBack();
userProfileDialog(context, pUrl,);
        },
        child: CircleAvatar(
          backgroundColor: AppColors.textSecondaryLight,
          backgroundImage: CachedNetworkImageProvider(pUrl),
        ),
      ),
    );
  }
}
