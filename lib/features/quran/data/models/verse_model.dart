import '../../domain/entities/verse.dart';

class VerseModel extends Verse {
  VerseModel({
    required super.id,
    required super.surahNumber,
    required super.verseNumber,
    required super.textArabic,
    required super.translation,
    required super.audioUrl,
    required super.juzNumber,
    required super.pageNumber,
    super.bookmarkName,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'surahNumber': surahNumber,
      'verseNumber': verseNumber,
      'textArabic': textArabic,
      'translation': translation,
      'audioUrl': audioUrl,
      'juzNumber': juzNumber,
      'pageNumber': pageNumber,
      'bookmarkName': bookmarkName,
    };
  }

  factory VerseModel.fromMap(Map<dynamic, dynamic> map) {
    return VerseModel(
      id: map['id'] as int,
      surahNumber: map['surahNumber'] as int,
      verseNumber: map['verseNumber'] as int,
      textArabic: map['textArabic'] as String,
      translation: map['translation'] as String,
      audioUrl: map['audioUrl'] as String,
      juzNumber: map['juzNumber'] as int,
      pageNumber: map['pageNumber'] as int,
      bookmarkName: map['bookmarkName'] as String?,
    );
  }

  factory VerseModel.fromEntity(Verse entity) {
    return VerseModel(
      id: entity.id,
      surahNumber: entity.surahNumber,
      verseNumber: entity.verseNumber,
      textArabic: entity.textArabic,
      translation: entity.translation,
      audioUrl: entity.audioUrl,
      juzNumber: entity.juzNumber,
      pageNumber: entity.pageNumber,
      bookmarkName: entity.bookmarkName,
    );
  }
}
