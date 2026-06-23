import '../../domain/entities/book.dart';

class BookModel extends BookEntity {
  BookModel({
    required super.slug,
    required super.bookName,
    required super.bookNameUrdu,
    required super.writerName,
    required super.totalHadith,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    final slug = json['bookSlug'] ?? '';
    return BookModel(
      slug: slug,
      bookName: json['bookName'] ?? '',
      bookNameUrdu: _getUrduName(slug, json['bookName'] ?? ''),
      writerName: json['writerName'] ?? '',
      totalHadith: (json['hadiths_count'] ?? json['totalHadith'])?.toString() ?? '0',
    );
  }

  static String _getUrduName(String slug, String defaultName) {
    final Map<String, String> urduNames = {
      'sahih-bukhari': 'صحیح بخاری',
      'sahih-muslim': 'صحیح مسلم',
      'al-tirmidhi': 'جامع ترمذی',
      'sunan-abi-dawood': 'سنن ابی داؤد',
      'sunan-an-nasai': 'سنن نسائی',
      'sunan-ibn-majah': 'سنن ابن ماجہ',
      'mishkat-al-masabih': 'مشکوۃ المصابیح',
      'musnad-ahmad': 'مسند احمد',
      'al-adab-al-mufrad': 'الادب المفرد',
      'bulugh-al-maram': 'بلوغ المرام',
      'riyad-as-salihin': 'ریاض الصالحین',
      'shama-il-tirmidhi': 'شمائل ترمذی',
    };
    return urduNames[slug] ?? defaultName;
  }
}