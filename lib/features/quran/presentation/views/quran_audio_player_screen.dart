import 'package:auraq/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/quran.dart' as quran;
import '../controllers/surah_juz_controller.dart';
import '../controllers/quran_audio_player_controller.dart';

class QuranAudioPlayerScreen extends ConsumerWidget {
  const QuranAudioPlayerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quranState = ref.watch(surahJuzControllerProvider);
    final audioState = ref.watch(quranAudioPlayerControllerProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? AppColors.backgroundDark : AppColors.backgroundLight,
      appBar: AppBar(
        title: Text(
          'Surah Audio Player',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
            color: isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          // Premium Styled Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: TextField(
              onChanged: (val) => ref.read(surahJuzControllerProvider.notifier).searchSurah(val),
              style: TextStyle(
                color: isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight,
                fontSize: 14,
              ),
              decoration: InputDecoration(
                hintText: 'Search Surah...',
                hintStyle: TextStyle(
                  color: isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight,
                  fontSize: 14,
                ),
                prefixIcon: const Icon(Icons.search_rounded, color: AppColors.primaryTeal, size: 22),
                filled: true,
                fillColor: isDark ? AppColors.surfaceDark : AppColors.surfaceLight,
                contentPadding: const EdgeInsets.symmetric(vertical: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: isDark ? AppColors.borderDark : AppColors.borderLight,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: AppColors.primaryTeal,
                    width: 1.2,
                  ),
                ),
              ),
            ),
          ),

          // Audio Playlist Array Layout
          Expanded(
            child: Stack(
              children: [
                quranState.surahs.when(
                  data: (_) {
                    final list = quranState.filteredSurahs;
                    if (list.isEmpty) {
                      return Center(
                        child: Text(
                          'No Surah found',
                          style: TextStyle(
                            color: isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    }

                    return ListView.separated(
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 8,
                        bottom: audioState.currentAudioUrl != null ? 110 : 20,
                      ),
                      physics: const BouncingScrollPhysics(),
                      itemCount: list.length,
                      separatorBuilder: (context, index) => Divider(
                        color: isDark ? AppColors.borderDark : AppColors.borderLight,
                        height: 1,
                        thickness: 0.8,
                      ),
                      itemBuilder: (context, index) {
                        final surah = list[index];
                        final realSurahAudioUrl = quran.getAudioURLBySurah(surah.number);
                        final isCurrent = audioState.currentAudioUrl == realSurahAudioUrl;
                        final surahAudioId = surah.number * 1000;
                        final int totalVerses = quran.getVerseCount(surah.number);

                        return InkWell(
                          onTap: () {
                            if (isCurrent && audioState.isPlaying) {
                              ref.read(quranAudioPlayerControllerProvider.notifier).pauseAudio();
                            } else {
                              ref.read(quranAudioPlayerControllerProvider.notifier).playVerseAudio(realSurahAudioUrl, surahAudioId);
                            }
                          },
                          borderRadius: BorderRadius.circular(12),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 4.0),
                            child: Row(
                              children: [
                                // Left Dynamic Leading Component
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: isCurrent
                                        ? AppColors.primaryTeal.withOpacity(0.12)
                                        : (isDark ? AppColors.surfaceDark : AppColors.primaryTeal.withOpacity(0.04)),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: isCurrent ? AppColors.primaryTeal : Colors.transparent,
                                      width: 1,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(
                                    isCurrent && audioState.isPlaying
                                        ? Icons.volume_up_rounded
                                        : Icons.play_arrow_rounded,
                                    color: isCurrent ? AppColors.primaryTeal : (isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight),
                                    size: 22,
                                  ),
                                ),
                                const SizedBox(width: 16),

                                // Central Meta Text Setup
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        surah.nameEnglish,
                                        style: TextStyle(
                                          fontWeight: isCurrent ? FontWeight.bold : FontWeight.w600,
                                          fontSize: 15,
                                          color: isCurrent
                                              ? AppColors.primaryTeal
                                              : (isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight),
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        '$totalVerses Verses',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // Pure Arabic Audio Node Target Layout
                                Text(
                                  surah.nameArabic,
                                  style: GoogleFonts.amiri(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: isCurrent
                                        ? AppColors.accentGold
                                        : (isDark ? AppColors.textPrimaryDark : AppColors.primaryTeal),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  loading: () => const Center(
                    child: CircularProgressIndicator(color: AppColors.primaryTeal),
                  ),
                  error: (err, _) => Center(
                    child: Text('Error: $err', style: const TextStyle(color: AppColors.error)),
                  ),
                ),

                // Bottom Floating Glassmorphic Styled Media Control Center
                if (audioState.currentAudioUrl != null)
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: isDark ? AppColors.surfaceDark : AppColors.surfaceLight,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: isDark ? AppColors.borderDark : AppColors.borderLight,
                          width: 1.2,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(isDark ? 0.4 : 0.08),
                            blurRadius: 20,
                            offset: const Offset(0, -4),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                      child: SafeArea(
                        top: false,
                        bottom: false,
                        child: Row(
                          children: [
                            // Disc Icon
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppColors.primaryTeal.withOpacity(0.08),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.music_note_rounded,
                                color: AppColors.primaryTeal,
                                size: 20,
                              ),
                            ),
                            const SizedBox(width: 14),

                            // Dynamic Track Information
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    audioState.isPlaying ? 'Now Playing' : 'Paused',
                                    style: const TextStyle(
                                      color: AppColors.accentGold,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    'Surah Audio Stream',
                                    style: TextStyle(
                                      color: isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),

                            // Default Controller Action Setup Without Buffering Getter Error
                            IconButton(
                              icon: Icon(
                                audioState.isPlaying
                                    ? Icons.pause_circle_filled_rounded
                                    : Icons.play_circle_filled_rounded,
                                color: AppColors.primaryTeal,
                                size: 38,
                              ),
                              onPressed: () {
                                if (audioState.isPlaying) {
                                  ref.read(quranAudioPlayerControllerProvider.notifier).pauseAudio();
                                } else {
                                  ref.read(quranAudioPlayerControllerProvider.notifier).playVerseAudio(
                                    audioState.currentAudioUrl!,
                                    audioState.playingVerseId ?? 0,
                                  );
                                }
                              },
                            ),

                            IconButton(
                              icon: Icon(
                                Icons.close_rounded,
                                color: isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight,
                                size: 20,
                              ),
                              onPressed: () => ref.read(quranAudioPlayerControllerProvider.notifier).stopAudio(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}