import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/app_colors.dart';
import '../../../../core/services/settings_controller.dart';
import '../../domain/entities/dua_entity.dart';

class DuaDetailScreen extends ConsumerWidget {
  final DuaEntity dua;
  const DuaDetailScreen({super.key, required this.dua});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsControllerProvider);
    final isUrdu = settings.language == 'ur';
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          isUrdu ? dua.titleUr : dua.titleEn,
          style: isUrdu ? GoogleFonts.notoNastaliqUrdu(fontSize: 16, fontWeight: FontWeight.bold) : const TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.copy_rounded, size: 20),
            onPressed: () {
              Clipboard.setData(ClipboardData(text: "${dua.arabic}\n\n${isUrdu ? dua.translationUr : dua.translationEn}"));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(isUrdu ? 'نقل کر لیا گیا' : 'Copied to clipboard'),
                  behavior: SnackBarBehavior.floating,
                  duration: const Duration(seconds: 1),
                ),
              );
            },
          ),
          const SizedBox(width: 8),
        ],
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
              child: SelectableText(
                dua.arabic,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: GoogleFonts.amiri(
                  fontSize: 28,
                  height: 2.2,
                  fontWeight: FontWeight.bold,
                  color: isDark ? Colors.white : Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Translation Section
            Container(
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
                      Icon(Icons.translate_rounded, size: 16, color: AppColors.primaryTeal.withOpacity(0.7)),
                      const SizedBox(width: 8),
                      Text(
                        isUrdu ? 'ترجمہ' : 'Translation',
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
                  SelectableText(
                    isUrdu ? dua.translationUr : dua.translationEn,
                    textDirection: isUrdu ? TextDirection.rtl : TextDirection.ltr,
                    style: isUrdu 
                      ? GoogleFonts.notoNastaliqUrdu(fontSize: 18, height: 2.0, color: isDark ? Colors.white70 : Colors.black87)
                      : GoogleFonts.lora(fontSize: 16, height: 1.6, color: isDark ? Colors.white70 : Colors.black87),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Reference
            if (dua.reference.isNotEmpty)
              Align(
                alignment: isUrdu ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                    color: isDark ? Colors.white.withOpacity(0.05) : Colors.black.withOpacity(0.03),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.menu_book_rounded, size: 14, color: Colors.grey),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Text(
                          '${isUrdu ? "حوالہ: " : "Ref: "}${dua.reference}',
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
            
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
