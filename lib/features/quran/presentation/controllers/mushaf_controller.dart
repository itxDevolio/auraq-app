import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../domain/entities/verse.dart';
import '../../../../core/services/settings_controller.dart';
import 'quran_di_providers.dart';

class MushafController extends StateNotifier<AsyncValue<List<Verse>>> {
  final Ref _ref;

  MushafController(this._ref) : super(const AsyncValue.loading());

  Future<void> loadVersesForPage(int pageNumber) async {
    state = const AsyncValue.loading();
    try {
      final repo = _ref.read(quranRepositoryProvider);
      final lang = _ref.read(settingsControllerProvider).language;
      final verses = await repo.getVerses(pageNumber, lang: lang);
      state = AsyncValue.data(verses);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}

final mushafControllerProvider =
    StateNotifierProvider<MushafController, AsyncValue<List<Verse>>>((ref) {
  return MushafController(ref);
});
