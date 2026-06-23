import '../../domain/entities/dhikr_entity.dart';

class AdhkarCategory {
  final String id;
  final String titleEn;
  final String titleUr;
  final List<DhikrEntity> dhikrs;

  AdhkarCategory({
    required this.id,
    required this.titleEn,
    required this.titleUr,
    required this.dhikrs,
  });
}

class AdhkarConstants {
  static List<DhikrEntity> morningAdhkar = [
    DhikrEntity(
      id: 'm1',
      arabic: 'أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ، وَالْحَمْدُ لِلَّهِ، لَا إِلَهَ إِلَّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ',
      english: 'We have entered a new day and with it all dominion is Allah\'s. All praise is due to Allah. None has the right to be worshipped but Allah alone, Who has no partner.',
      urdu: 'ہم نے صبح کی اور اللہ کے ملک نے صبح کی، اور تمام تعریفیں اللہ ہی کے لیے ہیں، اللہ کے سوا کوئی معبود نہیں وہ اکیلا ہے اس کا کوئی شریک نہیں، اسی کی بادشاہی ہے اور اسی کی تعریف ہے اور وہ ہر چیز پر قادر ہے۔',
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'm2',
      arabic: 'اللَّهُمَّ بَكَ أَصْبَحْنَا، وَبِكَ أَمْسَيْنَا، وَبِكَ نَحْيَا، وَبِكَ نَمُوتُ وَإِلَيْكَ النُّشُورُ',
      english: 'O Allah, by You we enter the morning and by You we enter the evening, by You we live and by You we die, and to You is the Final Return.',
      urdu: 'اے اللہ! تیری ہی مدد سے ہم نے صبح کی اور تیری ہی مدد سے ہم نے شام کی، اور تیری ہی مرضی سے ہم جیتے ہیں اور تیری ہی مرضی سے ہم مریں گے اور تیری ہی طرف اٹھ کر جانا ہے۔',
      targetCount: 1,
    ),
  ];

  static List<DhikrEntity> eveningAdhkar = [
    DhikrEntity(
      id: 'e1',
      arabic: 'أَمْسَيْنَا وَأَمْسَى الْمُلْكُ لِلَّهِ، وَالْحَمْدُ لِلَّهِ، لَا إِلَهَ إِلَّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ',
      english: 'We have entered the evening and with it all dominion is Allah\'s. All praise is due to Allah. None has the right to be worshipped but Allah alone.',
      urdu: 'ہم نے شام کی اور اللہ کے ملک نے شام کی، اور تمام تعریفیں اللہ ہی کے لیے ہیں، اللہ کے سوا کوئی معبود نہیں وہ اکیلا ہے اس کا کوئی شریک نہیں، اسی کی بادشاہی hai aur isi ki tareef hai aur woh har cheez par qadir hai.',
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'e2',
      arabic: 'اللَّهُمَّ بِكَ أَمْسَيْنَا، وَبِكَ أَصْبَحْنَا، وَبِكَ نَحْيَا، وَبِكَ نَمُوتُ وَإِلَيْكَ الْمَصِيرُ',
      english: 'O Allah, by You we enter the evening and by You we enter the morning, by You we live and by You we die, and to You is the Final Return.',
      urdu: 'اے اللہ! تیری ہی مدد سے ہم نے شام کی اور تیری ہی مدد سے ہم نے صبح کی، اور تیری ہی مرضی سے ہم جیتے ہیں اور تیری ہی مرضی سے ہم مریں گے اور تیری ہی طرف لوٹنا ہے۔',
      targetCount: 1,
    ),
  ];

  static List<DhikrEntity> sleepingAdhkar = [
    DhikrEntity(
      id: 's1',
      arabic: 'بِاسْمِكَ اللَّهُمَّ أَمُوتُ وَأَحْيَا',
      english: 'In Your name, O Allah, I die and I live.',
      urdu: 'اے اللہ! تیرے ہی نام کے ساتھ میں مرتا ہوں اور جیتا ہوں۔',
      targetCount: 1,
    ),
    DhikrEntity(
      id: 's2',
      arabic: 'اللَّهُمَّ قِنِي عَذَابَكَ يَوْمَ تَبْعَثُ عِبَادَكَ',
      english: 'O Allah, protect me from Your punishment on the Day You resurrect Your slaves.',
      urdu: 'اے اللہ! مجھے اپنے عذاب سے بچا جس دن تو اپنے بندوں کو اٹھائے گا۔',
      targetCount: 3,
    ),
  ];

  static List<DhikrEntity> wakingAdhkar = [
    DhikrEntity(
      id: 'w1',
      arabic: 'الْحَمْدُ لِلَّهِ الَّذِي أَحْيَانَا بَعْدَ مَا أَمَاتَنَا وَإِلَيْهِ النُّشُورُ',
      english: 'Praise is to Allah Who gives us life after He has caused us to die and to Him is the return.',
      urdu: 'تمام تعریفیں اللہ کے لیے ہیں جس نے ہمیں مارنے کے بعد زندگی بخشی اور اسی کی طرف لوٹ کر جانا ہے۔',
      targetCount: 1,
    ),
  ];

  static List<AdhkarCategory> categories = [
    AdhkarCategory(id: 'morning', titleEn: 'Morning Adhkar', titleUr: 'صبح کے اذکار', dhikrs: morningAdhkar),
    AdhkarCategory(id: 'evening', titleEn: 'Evening Adhkar', titleUr: 'شام کے اذکار', dhikrs: eveningAdhkar),
    AdhkarCategory(id: 'sleeping', titleEn: 'Sleeping Adhkar', titleUr: 'سونے کے اذکار', dhikrs: sleepingAdhkar),
    AdhkarCategory(id: 'waking', titleEn: 'Waking Up', titleUr: 'جاگنے کے اذکار', dhikrs: wakingAdhkar),
  ];
}
