import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:just_audio/just_audio.dart';

class AudioState {
  final bool isPlaying;
  final bool isLoading;
  final String? currentAudioUrl;
  final int? playingVerseId; 

  AudioState({
    this.isPlaying = false, 
    this.isLoading = false,
    this.currentAudioUrl, 
    this.playingVerseId,
  });

  AudioState copyWith({
    bool? isPlaying, 
    bool? isLoading,
    String? currentAudioUrl, 
    int? playingVerseId,
  }) {
    return AudioState(
      isPlaying: isPlaying ?? this.isPlaying,
      isLoading: isLoading ?? this.isLoading,
      currentAudioUrl: currentAudioUrl ?? this.currentAudioUrl,
      playingVerseId: playingVerseId ?? this.playingVerseId,
    );
  }
}

class QuranAudioPlayerController extends StateNotifier<AudioState> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  QuranAudioPlayerController() : super(AudioState()) {
    _audioPlayer.playerStateStream.listen((playerState) {
      final processingState = playerState.processingState;
      if (processingState == ProcessingState.completed) {
        state = AudioState(isPlaying: false, isLoading: false, currentAudioUrl: null, playingVerseId: null);
      } else {
        state = state.copyWith(
          isPlaying: playerState.playing,
          isLoading: processingState == ProcessingState.loading || processingState == ProcessingState.buffering,
        );
      }
    });
  }

  Future<void> playVerseAudio(String url, int verseId) async {
    try {
      if (state.currentAudioUrl == url) {
        if (!state.isPlaying) {
          await _audioPlayer.play();
        }
      } else {
        await _audioPlayer.stop();
        state = state.copyWith(
          isPlaying: false, 
          isLoading: true, 
          currentAudioUrl: url, 
          playingVerseId: verseId,
        );
        await _audioPlayer.setUrl(url);
        await _audioPlayer.play();
      }
    } catch (e) {
      state = state.copyWith(isLoading: false);
      throw Exception("Failed to stream verse audio: $e");
    }
  }

  Future<void> pauseAudio() async {
    await _audioPlayer.pause();
  }

  Future<void> stopAudio() async {
    await _audioPlayer.stop();
    state = AudioState(isPlaying: false, isLoading: false, currentAudioUrl: null, playingVerseId: null);
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
}

final quranAudioPlayerControllerProvider =
StateNotifierProvider<QuranAudioPlayerController, AudioState>((ref) {
  // Logic to stop audio when provider is disposed (optional, but good practice)
  ref.onDispose(() {
    // Note: StateNotifier's dispose is also called.
  });
  return QuranAudioPlayerController();
});
