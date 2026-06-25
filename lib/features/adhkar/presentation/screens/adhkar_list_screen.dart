import 'package:auraq/core/app_colors.dart';
import 'package:auraq/core/services/haptic_feedback.dart';
import 'package:auraq/core/services/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../domain/entities/dhikr_entity.dart';
import '../controller/adhkar_provider.dart';

class AdhkarListScreen extends ConsumerStatefulWidget {
  final List<DhikrEntity> dhikrList;
  final String title;

  const AdhkarListScreen({super.key, required this.dhikrList, required this.title});

  @override
  ConsumerState<AdhkarListScreen> createState() => _AdhkarListScreenState();
}

class _AdhkarListScreenState extends ConsumerState<AdhkarListScreen> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(settingsControllerProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bool isUrdu = settings.language == 'ur';

    return Scaffold(
      backgroundColor: isDark ? AppColors.backgroundDark : AppColors.backgroundLight,
      appBar: AppBar(
        title: Text(
          widget.title,
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
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Text(
                "${_currentIndex + 1}/${widget.dhikrList.length}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isDark ? Colors.white70 : Colors.black54,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Directionality(
        textDirection: isUrdu ? TextDirection.rtl : TextDirection.ltr,
        child: PageView.builder(
          controller: _pageController,
          itemCount: widget.dhikrList.length,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            final dhikr = widget.dhikrList[index];
            final count = ref.watch(adhkarCountProvider(dhikr.id));
            final isCompleted = count >= dhikr.targetCount;

            return SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(24, 20, 24, 40),
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: isUrdu ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: [
                  // Arabic Text - Large and Centered for "One by One" view
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
                    decoration: BoxDecoration(
                      color: isDark ? AppColors.surfaceDark : Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: isDark ? 0.2 : 0.05),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        )
                      ],
                    ),
                    child: Text(
                      dhikr.arabic,
                      style: GoogleFonts.amiri(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        height: 1.8,
                        color: isDark ? Colors.white : AppColors.textPrimaryLight,
                      ),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  
                  const SizedBox(height: 32),

                  // Translation Section
                  Text(
                    isUrdu ? "ترجمہ" : "Translation",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryTeal.withValues(alpha: 0.6),
                      letterSpacing: 1.0,
                      fontFamily: isUrdu ? GoogleFonts.notoNastaliqUrdu().fontFamily : null,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    isUrdu ? dhikr.urdu : dhikr.english,
                    style: isUrdu 
                      ? GoogleFonts.notoNastaliqUrdu(
                          fontSize: 16,
                          color: isDark ? Colors.white70 : Colors.black87,
                          height: 2.2,
                        )
                      : TextStyle(
                          fontSize: 16,
                          color: isDark ? Colors.white70 : Colors.black87,
                          height: 1.5,
                        ),
                    textAlign: isUrdu ? TextAlign.right : TextAlign.left,
                  ),

                  const SizedBox(height: 24),

                  // Fazilat Section
                  if ((isUrdu ? dhikr.fazilatUrdu : dhikr.fazilatEnglish) != null) ...[
                    _buildFazilatBlock(
                      isUrdu ? dhikr.fazilatUrdu! : dhikr.fazilatEnglish!, 
                      isUrdu ? "فضیلت" : "Virtue", 
                      isDark, 
                      isUrdu: isUrdu
                    ),
                    const SizedBox(height: 24),
                  ],

                  // Reference
                  if (dhikr.reference != null && dhikr.reference!.isNotEmpty)
                    Row(
                      mainAxisAlignment: isUrdu ? MainAxisAlignment.end : MainAxisAlignment.start,
                      children: [
                        Icon(Icons.menu_book_outlined, size: 14, color: AppColors.primaryTeal.withValues(alpha: 0.6)),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            dhikr.reference!,
                            style: TextStyle(
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                              color: isDark ? Colors.white54 : Colors.black54,
                            ),
                            textAlign: isUrdu ? TextAlign.right : TextAlign.left,
                          ),
                        ),
                      ],
                    ),

                  const SizedBox(height: 40),

                  // Counter & Action Area
                  Center(
                    child: Column(
                      children: [
                        Text(
                          isUrdu ? "ہدف: ${dhikr.targetCount} مرتبہ" : "Goal: ${dhikr.targetCount} times",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: isDark ? Colors.white60 : Colors.black54,
                            fontFamily: isUrdu ? GoogleFonts.notoNastaliqUrdu().fontFamily : null,
                          ),
                        ),
                        const SizedBox(height: 20),
                        
                        // Large Counter Button
                        InkWell(
                          onTap: isCompleted ? null : () {
                            hapticFeedBack();
                            ref.read(adhkarCountProvider(dhikr.id).notifier).increment();
                          },
                          borderRadius: BorderRadius.circular(100),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: isCompleted ? AppColors.primaryTeal : AppColors.primaryTeal.withValues(alpha: 0.1),
                              border: Border.all(color: AppColors.primaryTeal, width: 4),
                              boxShadow: [
                                if (!isCompleted)
                                  BoxShadow(
                                    color: AppColors.primaryTeal.withValues(alpha: 0.2),
                                    blurRadius: 20,
                                    spreadRadius: 5,
                                  )
                              ],
                            ),
                            child: Center(
                              child: isCompleted 
                                ? const Icon(Icons.check, size: 60, color: Colors.white)
                                : Text(
                                    "$count",
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primaryTeal,
                                    ),
                                  ),
                            ),
                          ),
                        ),
                        
                        const SizedBox(height: 30),
                        
                        if (isCompleted && index < widget.dhikrList.length - 1)
                          TextButton.icon(
                            onPressed: () {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            },
                            icon: Icon(isUrdu ? Icons.arrow_back : Icons.arrow_forward),
                            label: Text(isUrdu ? "اگلا ذکر" : "Next Dhikr"),
                            style: TextButton.styleFrom(foregroundColor: AppColors.primaryTeal),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildFazilatBlock(String text, String label, bool isDark, {bool isUrdu = false}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primaryTeal.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: isUrdu ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (!isUrdu) Icon(Icons.auto_awesome, size: 14, color: AppColors.primaryTeal),
              if (!isUrdu) const SizedBox(width: 6),
              Text(
                label,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryTeal,
                  letterSpacing: 0.5,
                  fontFamily: isUrdu ? GoogleFonts.notoNastaliqUrdu().fontFamily : null,
                ),
              ),
              if (isUrdu) const SizedBox(width: 6),
              if (isUrdu) Icon(Icons.auto_awesome, size: 14, color: AppColors.primaryTeal),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            text,
            style: isUrdu 
              ? GoogleFonts.notoNastaliqUrdu(
                  fontSize: 13,
                  color: isDark ? Colors.white70 : Colors.black87,
                  height: 2.2,
                )
              : TextStyle(
                  fontSize: 13,
                  color: isDark ? Colors.white70 : Colors.black87,
                  height: 1.5,
                  fontStyle: FontStyle.italic,
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
                fontSize: 14,
                color: isDark ? Colors.white70 : Colors.black87,
                height: 2.2,
              )
            : TextStyle(
                fontSize: 15,
                color: isDark ? Colors.white70 : Colors.black87,
                height: 1.5,
              ),
          textAlign: isUrdu ? TextAlign.right : TextAlign.left,
        ),
      ],
    );
  }
}
