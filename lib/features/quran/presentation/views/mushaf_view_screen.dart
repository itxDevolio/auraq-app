import 'package:auraq/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/quran.dart' as quran;
import '../controllers/mushaf_controller.dart';
import '../controllers/surah_juz_controller.dart';
import '../controllers/quran_audio_player_controller.dart';
import '../widgets/verse_bottom_sheet.dart';

class MushafViewScreen extends ConsumerStatefulWidget {
  final int initialPage;
  const MushafViewScreen({super.key, required this.initialPage});

  @override
  ConsumerState<MushafViewScreen> createState() => _MushafViewScreenState();
}

class _MushafViewScreenState extends ConsumerState<MushafViewScreen> {
  late PageController _pageController;
  late int _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage;
    _pageController = PageController(initialPage: widget.initialPage - 1);
  }

  @override
  void dispose() {
    ref.read(quranAudioPlayerControllerProvider.notifier).stopAudio();
    _pageController.dispose();
    super.dispose();
  }

  // --- Helper Methods for UI Logic ---
  String _getSurahName(int page) {
    try {
      final data = quran.getPageData(page);
      return data.isEmpty ? "القرآن الكريم" : quran.getSurahNameArabic(data.first["surah"] ?? 1);
    } catch (_) { return "القرآن الكريم"; }
  }

  int _getJuz(int page) {
    try {
      final data = quran.getPageData(page);
      return data.isEmpty ? 1 : quran.getJuzNumber(data.first["surah"] ?? 1, data.first["verse"] ?? 1);
    } catch (_) { return 1; }
  }

  @override
  Widget build(BuildContext context) {
    final mushafState = ref.watch(mushafControllerProvider);
    final audioState = ref.watch(quranAudioPlayerControllerProvider);
    final selectedVerseId = ref.watch(surahJuzControllerProvider).selectedVerseId;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryTeal,
        centerTitle: true,
        title: Text(
          "الجزء ${_getJuz(_currentPage)}  |  ${_getSurahName(_currentPage)}",
          style: GoogleFonts.amiri(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: 604,
        reverse: true,
        onPageChanged: (idx) {
          setState(() => _currentPage = idx + 1);
          ref.read(mushafControllerProvider.notifier).loadVersesForPage(idx + 1);
        },
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: mushafState.when(
              data: (verses) => SingleChildScrollView(
                child: RichText(
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  text: TextSpan(
                    children: verses.map((verse) {
                      final isSelected = selectedVerseId == verse.id;
                      final isPlaying = audioState.playingVerseId == verse.id && audioState.isPlaying;

                      return TextSpan(
                        text: '${verse.textArabic} ﴿${verse.verseNumber}﴾ ',
                        style: GoogleFonts.amiriQuran(
                          fontSize: 22,
                          height: 2.0,
                          color: isPlaying
                              ? AppColors.primaryTeal
                              : (isSelected ? AppColors.accentGold : (isDark ? Colors.white : Colors.black87)),
                          backgroundColor: isSelected ? AppColors.accentGold.withOpacity(0.1) : null,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {
                          // 1. Select
                          ref.read(surahJuzControllerProvider.notifier).selectVerse(verse.id);

                          // 2. Play Audio (Null Safe)
                          if (verse.audioUrl != null) {
                            ref.read(quranAudioPlayerControllerProvider.notifier).playVerseAudio(verse.audioUrl!, verse.id);
                          }

                          // 3. Show Sheet & Cleanup
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            builder: (context) => VerseBottomSheet(verse: verse),
                          ).whenComplete(() {
                            ref.read(quranAudioPlayerControllerProvider.notifier).stopAudio();
                            ref.read(surahJuzControllerProvider.notifier).selectVerse(-1);
                          });
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
              loading: () => const Center(child: CircularProgressIndicator(color: AppColors.primaryTeal)),
              error: (err, _) => Center(child: Text('Error: $err')),
            ),
          );
        },
      ),
    );
  }
}