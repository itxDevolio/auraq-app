import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/app_colors.dart';
import '../../../../core/services/settings_controller.dart';
import '../../domain/entities/shifa_entity.dart';

class ShifaDetailScreen extends ConsumerStatefulWidget {
  final ShifaEntity dua;
  const ShifaDetailScreen({super.key, required this.dua});

  @override
  ConsumerState<ShifaDetailScreen> createState() => _ShifaDetailScreenState();
}

class _ShifaDetailScreenState extends ConsumerState<ShifaDetailScreen> with SingleTickerProviderStateMixin {
  int _count = 0;
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.92).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _increment() {
    if (_count < widget.dua.targetCount) {
      _animationController.forward().then((_) => _animationController.reverse());
      HapticFeedback.mediumImpact();
      setState(() {
        _count++;
      });
      if (_count == widget.dua.targetCount) {
        final isUrdu = ref.read(settingsControllerProvider).language == 'ur';
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            margin: const EdgeInsets.all(16),
            content: Text(
           'Target Achieved! MashaAllah',
              style: isUrdu ? GoogleFonts.notoNastaliqUrdu(fontSize: 14) : const TextStyle(fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.green.shade600,
          ),
        );
      }
    }
  }

  void _reset() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(settingsControllerProvider);
    final isUrdu = settings.language == 'ur';
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          isUrdu ? widget.dua.titleUr : widget.dua.titleEn,
          style: isUrdu ? GoogleFonts.notoNastaliqUrdu(fontSize: 16, fontWeight: FontWeight.bold) : const TextStyle(fontWeight: FontWeight.bold),
        ),

      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Arabic Text Card
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              decoration: BoxDecoration(
                color: isDark ? Colors.black45 : Colors.white,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: isDark ? Colors.white10 : Colors.black.withOpacity(0.05),
                ),
                boxShadow: [
                  if(!isDark) BoxShadow(
                    color: Colors.black.withOpacity(0.02),
                    blurRadius: 15,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Text(
                widget.dua.arabic,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: GoogleFonts.amiriQuran(
                  fontSize: 20,
                  height: 2.2,
                  fontWeight: FontWeight.bold,
                  color: isDark ? Colors.white : Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 24),

            _TranslationSection(
              title: isUrdu ? 'ترجمہ' : 'Translation',
              text: isUrdu ? widget.dua.translationUr : widget.dua.translationEn,
              isUrdu: isUrdu,
            ),
            const SizedBox(height: 12),

            // Reference
            if (widget.dua.reference.isNotEmpty)
              Align(
                alignment: isUrdu ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    color: isDark ? Colors.white.withOpacity(0.05) : Colors.black.withOpacity(0.03),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.menu_book_rounded, size: 14, color: Colors.grey),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Text(
                          '${ "Ref:          "}${widget.dua.reference}',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey.shade600,
                            fontFamily: isUrdu ? GoogleFonts.notoNastaliqUrdu().fontFamily : null,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            const SizedBox(height: 24),

            // Instructions Card
            if ((isUrdu && widget.dua.instructionUr.isNotEmpty) || (!isUrdu && widget.dua.instructionEn.isNotEmpty))
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: isDark ? Colors.amber.shade900.withOpacity(0.1) : Colors.amber.shade50,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: isDark ? Colors.amber.shade700.withOpacity(0.2) : Colors.amber.shade100),
                ),
                child: Column(
                  crossAxisAlignment: isUrdu ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: isUrdu ? MainAxisAlignment.end : MainAxisAlignment.start,
                      children: [
                        Icon(Icons.lightbulb_outline_rounded, color: isDark ? Colors.amber.shade400 : Colors.amber.shade700, size: 18),
                        const SizedBox(width: 8),
                        Text(
                          isUrdu ? 'ہدایات' : 'Instructions',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1.0,
                            color: isDark ? Colors.amber.shade400 : Colors.amber.shade800,
                            fontSize: 12,
                            fontFamily: isUrdu ? GoogleFonts.notoNastaliqUrdu().fontFamily : null,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      isUrdu ? widget.dua.instructionUr : widget.dua.instructionEn,
                      textDirection: isUrdu ? TextDirection.rtl : TextDirection.ltr,
                      style: isUrdu
                        ? GoogleFonts.notoNastaliqUrdu(fontSize: 12, height: 1.8, color: isDark ? Colors.amber.shade100 : Colors.amber.shade900)
                        : TextStyle(fontSize: 14, height: 1.6, color: isDark ? Colors.amber.shade100 : Colors.amber.shade900),
                    ),
                  ],
                ),
              ),

            const SizedBox(height: 50),

            // Counter Section (Modern Minimalist)
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  decoration: BoxDecoration(
                    color: AppColors.primaryTeal.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    '$_count / ${widget.dua.targetCount}',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'monospace',
                      color: AppColors.primaryTeal,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                ScaleTransition(
                  scale: _scaleAnimation,
                  child: GestureDetector(
                    onTap: _increment,
                    child: Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isDark ? AppColors.primaryTeal.withOpacity(0.1) : Colors.white,
                        border: Border.all(
                          color: AppColors.primaryTeal.withOpacity(0.3),
                          width: 4,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.primaryTeal.withOpacity(isDark ? 0.05 : 0.1),
                            blurRadius: 20,
                            spreadRadius: 5,
                          )
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.touch_app,
                              size: 40,
                              color: AppColors.primaryTeal,
                            ),
                            const SizedBox(height: 8),
                            Text(
                           'TAP',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 2,
                                color: AppColors.primaryTeal.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}

class _TranslationSection extends StatelessWidget {
  final String title;
  final String text;
  final bool isUrdu;

  const _TranslationSection({
    required this.title,
    required this.text,
    required this.isUrdu,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isDark ? AppColors.primaryTeal.withOpacity(0.05) : AppColors.primaryTeal.withOpacity(0.03),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.primaryTeal.withOpacity(0.1),
        ),
      ),
      child: Column(
        crossAxisAlignment: isUrdu ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: isUrdu ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              const SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.2,
                  color: AppColors.primaryTeal,
                  fontSize: 12,
                  fontFamily: isUrdu ? GoogleFonts.notoNastaliqUrdu().fontFamily : null,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            text,
            textDirection: isUrdu ? TextDirection.rtl : TextDirection.ltr,
            style: isUrdu
              ? GoogleFonts.notoNastaliqUrdu(fontSize: 14, height: 2.0, color: isDark ? Colors.white70 : Colors.black87)
              : GoogleFonts.lora(fontSize: 16, height: 1.6, color: isDark ? Colors.white70 : Colors.black87),
          ),
        ],
      ),
    );
  }
}


