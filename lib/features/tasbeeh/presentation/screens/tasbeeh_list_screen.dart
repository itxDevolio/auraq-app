import 'package:auraq/core/app_colors.dart';
import 'package:auraq/core/services/haptic_feedback.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tasbeeh_screen.dart';

class TasbeehListScreen extends StatelessWidget {
  const TasbeehListScreen({super.key});

  final List<Map<String, String>> tasbeehList = const [
    {'id': 't1', 'titleEn': 'SubhanAllah', 'titleAr': 'سُبْحَانَ اللهِ'},
    {'id': 't2', 'titleEn': 'Alhamdulillah', 'titleAr': 'الْحَمْدُ لِلَّهِ'},
    {'id': 't3', 'titleEn': 'Allahu Akbar', 'titleAr': 'اللهُ أَكْبَرُ'},
    {'id': 't4', 'titleEn': 'Astaghfirullah', 'titleAr': 'أَسْتَغْفِرُ اللهَ'},
    {'id': 't5', 'titleEn': 'La ilaha illallah', 'titleAr': 'لَا إِلَهَ إِلَّا اللهُ'},
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? AppColors.backgroundDark : AppColors.backgroundLight,
      appBar: AppBar(
        title: const Text(
          "Tasbeeh List",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0.5),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: isDark ? Colors.white : Colors.black87,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
        itemCount: tasbeehList.length,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final item = tasbeehList[index];
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(isDark ? 0.2 : 0.05),
                  blurRadius: 15,
                  offset: const Offset(0, 8),
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Material(
                color: isDark ? AppColors.surfaceDark : Colors.white,
                child: InkWell(
                  onTap: () {
                    hapticFeedBack();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TasbeehScreen(
                          dhikrId: item['id']!,
                          dhikrTitle: item['titleAr']!, 
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                    child: Row(
                      children: [
                        // Left: English Label
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dhikr",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryTeal.withOpacity(0.7),
                                  letterSpacing: 1.0,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                item['titleEn']!,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: isDark ? Colors.white : Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                        // Right: Arabic Large Text
                        Text(
                          item['titleAr']!,
                          style: GoogleFonts.amiri(
                            color: AppColors.primaryTeal,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        
                        const SizedBox(width: 16),
                        
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 14,
                          color: isDark ? Colors.white24 : Colors.black26,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
