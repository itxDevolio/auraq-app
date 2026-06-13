import 'package:auraq/core/app_colors.dart';
import 'package:auraq/home/ui/widgets/user_profile_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          UserProfileWidget(
            name: "Ajmal khan",
            pUrl:
                "https://media.gettyimages.com/id/956842252/photo/portrait-of-a-confident-muslim-girl.jpg?s=170667a&w=gi&k=20&c=DonQKYjWv-OgPjWQxPpMK1mljHEfihmiZow2iYnpdGg=",
          ),
        ],
      ),
    );
  }
}
