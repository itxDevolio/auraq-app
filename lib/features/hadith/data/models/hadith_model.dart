import '../../domain/entities/hadith.dart';

class HadithModel extends HadithEntity {
  HadithModel({
    required super.id,
    required super.hadithNumber,
    required super.chapterNumber,
    required super.englishText,
    required super.urduText,
    required super.arabicText,
    required super.status,
  });

  factory HadithModel.fromJson(Map<String, dynamic> json) {
    return HadithModel(
      id: json['id'].toString(),
      hadithNumber: (json['hadithNumber'] ?? json['hadith_number']).toString(),
      chapterNumber: (json['chapterNumber'] ?? json['chapter']).toString(),
      englishText: json['hadithEnglish'] ?? json['englishText'] ?? '',
      urduText: json['hadithUrdu'] ?? json['urduText'] ?? '',
      arabicText: json['hadithArabic'] ?? json['arabicText'] ?? json['arab'] ?? '',
      status: json['status'] ?? '',
    );
  }
}