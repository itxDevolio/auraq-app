import 'package:auraq/core/app_colors.dart';
import 'package:auraq/core/services/haptic_feedback.dart';
import 'package:auraq/core/services/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../domain/entities/dhikr_entity.dart';
import '../controller/adhkar_provider.dart';

class AdhkarListScreen extends ConsumerWidget {
  final List<DhikrEntity> dhikrList;
  final String title;

  const AdhkarListScreen({super.key, required this.dhikrList, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsControllerProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bool isUrdu = settings.language == 'ur';

    return Scaffold(
      backgroundColor: isDark ? AppColors.backgroundDark : AppColors.backgroundLight,
      appBar: AppBar(
        title: Text(
          title,
          style: isUrdu 
            ? GoogleFonts.notoNastaliqUrdu(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: isDark ? Colors.white : Colors.black87,
              )
            : GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: isDark ? Colors.white : Colors.black87,
              ),
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
        itemCount: dhikrList.length,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          final dhikr = dhikrList[index];
          final count = ref.watch(adhkarCountProvider(dhikr.id));
          final isCompleted = count >= dhikr.targetCount;
          
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: isCompleted 
                      ? AppColors.primaryTeal.withValues(alpha: 0.1) 
                      : Colors.black.withValues(alpha: isDark ? 0.2 : 0.05),
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
                  onTap: isCompleted ? null : () {
                    hapticFeedBack();
                    ref.read(adhkarCountProvider(dhikr.id).notifier).increment();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: isUrdu ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                      children: [


                        Text(
                          dhikr.arabic,
                          style: GoogleFonts.amiri(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            height: 1.6,
                            color: isDark ? Colors.white : AppColors.textPrimaryLight,
                          ),
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                        ),
                        const SizedBox(height: 16),
                        // App Language Based Translation & Fazilat
                        if (isUrdu) ...[
                          _buildTranslationBlock(dhikr.urdu, "ترجمہ", isDark, isUrdu: true),
                          if (dhikr.fazilatUrdu != null) ...[
                            const SizedBox(height: 12),
                            _buildFazilatBlock(dhikr.fazilatUrdu!, "فضیلت", isDark, isUrdu: true),
                          ],
                        ] else ...[
                          _buildTranslationBlock(dhikr.english, "Translation", isDark, isUrdu: false),
                          if (dhikr.fazilatEnglish != null) ...[
                            const SizedBox(height: 12),
                            _buildFazilatBlock(dhikr.fazilatEnglish!, "Virtue", isDark, isUrdu: false),
                          ],
                        ],
                        
                        if (dhikr.reference != null && dhikr.reference!.isNotEmpty) ...[
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: isUrdu ? MainAxisAlignment.end : MainAxisAlignment.start,
                            children: [
                              if (!isUrdu) Icon(Icons.menu_book_outlined, size: 14, color: AppColors.primaryTeal.withValues(alpha: 0.6)),
                              if (!isUrdu) const SizedBox(width: 4),
                              Text(
                                dhikr.reference!,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                  color: isDark ? Colors.white54 : Colors.black54,
                                ),
                              ),
                              if (isUrdu) const SizedBox(width: 4),
                              if (isUrdu) Icon(Icons.menu_book_outlined, size: 14, color: AppColors.primaryTeal.withValues(alpha: 0.6)),
                            ],
                          ),
                        ],

                        const SizedBox(height: 24),
                        
                        // Counter Row
                        Row(
                          textDirection: isUrdu ? TextDirection.rtl : TextDirection.ltr,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: isUrdu ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    isUrdu ? "ہدف: ${dhikr.targetCount} مرتبہ" : "Goal: Read ${dhikr.targetCount} times",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: isCompleted ? AppColors.primaryTeal : (isDark ? Colors.white70 : Colors.black87),
                                      fontFamily: isUrdu ? GoogleFonts.notoNastaliqUrdu().fontFamily : null,
                                    ),
                                    textAlign: isUrdu ? TextAlign.right : TextAlign.left,
                                  ),
                                  const SizedBox(height: 8),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: LinearProgressIndicator(
                                      value: (count / dhikr.targetCount).clamp(0.0, 1.0),
                                      backgroundColor: AppColors.primaryTeal.withValues(alpha: 0.1),
                                      valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primaryTeal),
                                      minHeight: 8,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            // Modern Counter Indicator
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: isCompleted ? AppColors.primaryTeal : AppColors.primaryTeal.withValues(alpha: 0.1),
                                border: Border.all(color: AppColors.primaryTeal, width: 2),
                              ),
                              child: Center(
                                child: Text(
                                  "$count",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: isCompleted ? Colors.white : AppColors.primaryTeal,
                                  ),
                                ),
                              ),
                            ),
                          ],
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

  Widget _buildFazilatBlock(String text, String label, bool isDark, {bool isUrdu = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.primaryTeal.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: isUrdu ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (!isUrdu) Icon(Icons.auto_awesome, size: 10, color: AppColors.primaryTeal),
              if (!isUrdu) const SizedBox(width: 4),
              Text(
                label,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryTeal,
                  letterSpacing: 0.5,
                  fontFamily: isUrdu ? GoogleFonts.notoNastaliqUrdu().fontFamily : null,
                ),
              ),
              if (isUrdu) const SizedBox(width: 4),
              if (isUrdu) Icon(Icons.auto_awesome, size: 10, color: AppColors.primaryTeal),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            text,
            style: isUrdu 
              ? GoogleFonts.notoNastaliqUrdu(
                  fontSize: 12,
                  color: isDark ? Colors.white70 : Colors.black87,
                  height: 2.2,
                )
              : TextStyle(
                  fontSize: 12,
                  color: isDark ? Colors.white70 : Colors.black87,
                  height: 1.4,
                 
                ),
            textAlign: isUrdu ? TextAlign.right : TextAlign.left,
          ),
        ],
      ),
    );
  }

  Widget _buildTranslationBlock(String text, String label, bool isDark, {bool isUrdu = false}) {
    return Column(
      crossAxisAlignment: isUrdu ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryTeal.withValues(alpha: 0.6),
            letterSpacing: 1.0,
            fontFamily: isUrdu ? GoogleFonts.notoNastaliqUrdu().fontFamily : null,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          text,
          style: isUrdu 
            ? GoogleFonts.notoNastaliqUrdu(
                fontSize: 12,
                color: isDark ? Colors.white70 : Colors.black87,
                height: 2.2,
              )
            : TextStyle(
                fontSize: 13,
                color: isDark ? Colors.white70 : Colors.black87,
                height: 1.5,
              ),
          textAlign: isUrdu ? TextAlign.right : TextAlign.left,
        ),
      ],
    );
  }
}
