import 'package:mubin/features/quran/domain/entities/reciter.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:hive/hive.dart';

import '../constant/db_consts.dart';

class SettingsState {
  final String language;
  final Reciter currentReciter;
  final bool keepPlayingInBackground;
  final String madhab; // 'hanafi' or 'shafi'

  SettingsState({
    this.language = 'en',
    Reciter? currentReciter,
    this.keepPlayingInBackground = false,
    this.madhab = 'hanafi',
  }) : currentReciter = currentReciter ?? availableReciters.first;

  SettingsState copyWith({
    String? language,
    Reciter? currentReciter,
    bool? keepPlayingInBackground,
    String? madhab,
  }) {
    return SettingsState(
      language: language ?? this.language,
      currentReciter: currentReciter ?? this.currentReciter,
      keepPlayingInBackground: keepPlayingInBackground ?? this.keepPlayingInBackground,
      madhab: madhab ?? this.madhab,
    );
  }
}

class SettingsController extends StateNotifier<SettingsState> {
  SettingsController() : super(SettingsState()) {
    _loadSettings();
  }

  void _loadSettings() {
    final box = Hive.box(DbConstants.appBox);

    final String lang = box.get(
      'language',
      defaultValue: 'en',
    );

    final bool keepBg = box.get(
      'keepPlayingInBackground',
      defaultValue: false,
    );

    final String madhab = box.get(
      'madhab',
      defaultValue: 'hanafi',
    );

    final String? reciterName = box.get('reciterName');

    Reciter reciter = availableReciters.first;

    if (reciterName != null) {
      reciter = availableReciters.firstWhere(
            (r) => r.name == reciterName,
        orElse: () => availableReciters.first,
      );
    }

    state = state.copyWith(
      language: lang,
      currentReciter: reciter,
      keepPlayingInBackground: keepBg,
      madhab: madhab,
    );
  }

  Future<void> setLanguage(String lang) async {
    final box = Hive.box(DbConstants.appBox);
    await box.put('language', lang);
    state = state.copyWith(language: lang);
  }

  Future<void> setMadhab(String madhab) async {
    final box = Hive.box(DbConstants.appBox);
    await box.put('madhab', madhab);
    state = state.copyWith(madhab: madhab);
  }

  Future<void> setReciter(Reciter reciter) async {
    final box = Hive.box(DbConstants.appBox);
    await box.put('reciterName', reciter.name);
    state = state.copyWith(currentReciter: reciter);
  }

  Future<void> setKeepPlayingInBackground(bool value) async {
    final box = Hive.box(DbConstants.appBox);
    await box.put('keepPlayingInBackground', value);
    state = state.copyWith(keepPlayingInBackground: value);
  }
}

final settingsControllerProvider =
StateNotifierProvider<SettingsController, SettingsState>(
      (ref) => SettingsController(),
);