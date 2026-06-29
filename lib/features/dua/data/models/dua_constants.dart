import '../../domain/entities/dua_entity.dart';

class DuaCategory {
  final String id;
  final String titleEn;
  final String titleUr;
  final List<DuaEntity> duas;

  DuaCategory({
    required this.id,
    required this.titleEn,
    required this.titleUr,
    required this.duas,
  });
}

class DuaConstants {
  // ─── WAKING UP ───────────────────────────────────────────────────────────────
  static List<DuaEntity> wakingUpDuas = [
    DuaEntity(
      id: 'wu1',
      titleEn: 'Upon Waking Up',
      titleUr: 'سو کر اٹھنے کی دعا',
      arabic:
      'الْحَمْدُ للهِ الَّذِي أَحْيَانَا بَعْدَ مَا أَمَاتَنَا وَإِلَيْهِ النُّشُورُ',
      translationEn:
      'Praise is to Allah who gave us life after He had caused us to die and to Him is the return.',
      translationUr:
      'تمام تعریفیں اللہ کے لیے ہیں جس نے ہمیں مارنے (سلانے) کے بعد زندہ کیا اور اسی کی طرف لوٹ کر جانا ہے۔',
      reference: 'Sahih al-Bukhari: 6312',
    ),
    DuaEntity(
      id: 'wu2',
      titleEn: 'Upon Waking Up (Extended)',
      titleUr: 'سو کر اٹھنے کی مکمل دعا',
      arabic:
      'لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، سُبْحَانَ اللَّهِ، وَالْحَمْدُ للهِ، وَلَا إِلَهَ إِلَّا اللَّهُ، وَاللَّهُ أَكْبَرُ، وَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ الْعَلِيِّ الْعَظِيمِ',
      translationEn:
      'There is none worthy of worship except Allah, alone, without partner. To Him belongs sovereignty and to Him belongs all praise and He is capable of all things. Glory is to Allah, and praise is to Allah, and there is none worthy of worship except Allah, Allah is the Greatest, and there is no power nor might except with Allah, the Most High, the Most Great.',
      translationUr:
      'اللہ کے سوا کوئی معبود نہیں، اکیلا ہے، اس کا کوئی شریک نہیں، اسی کی بادشاہت ہے، اسی کے لیے تمام تعریفیں ہیں، اور وہ ہر چیز پر قادر ہے۔ اللہ پاک ہے، تعریف اللہ کے لیے ہے، اللہ کے سوا کوئی معبود نہیں، اللہ سب سے بڑا ہے، اور کوئی طاقت و قوت نہیں مگر اللہ عالی شان کے ساتھ۔',
      reference: 'Sahih al-Bukhari: 1154',
    ),
  ];

  // ─── TOILET / BATHROOM ───────────────────────────────────────────────────────
  static List<DuaEntity> toiletDuas = [
    DuaEntity(
      id: 't1',
      titleEn: 'Entering the Toilet',
      titleUr: 'بیت الخلا میں داخل ہونے کی دعا',
      arabic: 'بِسْمِ اللَّهِ، اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْخُبُثِ وَالْخَبَائِثِ',
      translationEn:
      'In the name of Allah. O Allah, I seek refuge in You from the male and female evil spirits.',
      translationUr:
      'اللہ کے نام سے۔ اے اللہ! میں تیری پناہ مانگتا ہوں خبیث جنوں اور جنیوں سے۔',
      reference: 'Sahih al-Bukhari: 142,',
    ),
    DuaEntity(
      id: 't2',
      titleEn: 'Leaving the Toilet',
      titleUr: 'بیت الخلا سے نکلنے کی دعا',
      arabic: 'غُفْرَانَكَ',
      translationEn: 'I seek Your forgiveness.',
      translationUr: 'میں تجھ سے بخشش مانگتا ہوں۔',
      reference: 'Abu Dawud: 30, Tirmidhi: 7',
    ),
  ];

  // ─── WUDU (ABLUTION) ─────────────────────────────────────────────────────────
  static List<DuaEntity> wuduDuas = [
    DuaEntity(
      id: 'wz1',
      titleEn: 'Before Performing Wudu',
      titleUr: 'وضو شروع کرنے کی دعا',
      arabic: 'بِسْمِ اللَّهِ',
      translationEn: 'In the name of Allah.',
      translationUr: 'اللہ کے نام سے۔',
      reference: 'Abu Dawud: 101,',
    ),
    DuaEntity(
      id: 'wz2',
      titleEn: 'After Performing Wudu',
      titleUr: 'وضو کے بعد کی دعا',
      arabic:
      'أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، وَأَشْهَدُ أَنَّ مُحَمَّداً عَبْدُهُ وَرَسُولُهُ، اللَّهُمَّ اجْعَلْنِي مِنَ التَّوَّابِينَ وَاجْعَلْنِي مِنَ الْمُتَطَهِّرِينَ',
      translationEn:
      'I bear witness that there is none worthy of worship except Allah, alone, without partner, and I bear witness that Muhammad is His slave and Messenger. O Allah, make me of those who repent and make me of those who purify themselves.',
      translationUr:
      'میں گواہی دیتا ہوں کہ اللہ کے سوا کوئی معبود نہیں، اکیلا ہے، اس کا کوئی شریک نہیں، اور میں گواہی دیتا ہوں کہ محمد ﷺ اس کے بندے اور رسول ہیں۔ اے اللہ! مجھے توبہ کرنے والوں میں سے بنا اور مجھے پاکیزگی اختیار کرنے والوں میں سے بنا۔',
      reference: 'Sahih Muslim: 234',
    ),
  ];

  // ─── CLOTHING ────────────────────────────────────────────────────────────────
  static List<DuaEntity> clothingDuas = [
    DuaEntity(
      id: 'cl1',
      titleEn: 'When Wearing New or Any Clothes',
      titleUr: 'کپڑے پہننے کی دعا',
      arabic:
      'الْحَمْدُ للهِ الَّذِي كَسَانِي هَذَا الثَّوْبَ وَرَزَقَنِيهِ مِنْ غَيْرِ حَوْلٍ مِنِّي وَلَا قُوَّةٍ',
      translationEn:
      'Praise is to Allah who has clothed me with this garment and provided it for me, with no power or might from myself.',
      translationUr:
      'تمام تعریفیں اللہ کے لیے ہیں جس نے مجھے یہ کپڑا پہنایا اور بغیر میری کسی طاقت اور قوت کے مجھے یہ عطا کیا۔',
      reference: 'Abu Dawud: 4023',
    ),
    DuaEntity(
      id: 'cl2',
      titleEn: 'When Undressing',
      titleUr: 'کپڑے اتارنے کی دعا',
      arabic: 'بِسْمِ اللَّهِ',
      translationEn: 'In the name of Allah.',
      translationUr: 'اللہ کے نام سے۔',
      reference: 'tirmidhi:  606',
    ),


  ];

  // ─── LEAVING & ENTERING HOME ─────────────────────────────────────────────────
  static List<DuaEntity> homeDuas = [
    DuaEntity(
      id: 'hm1',
      titleEn: 'When Leaving the House',
      titleUr: 'گھر سے نکلتے وقت کی دعا',
      arabic:
      'بِسْمِ اللَّهِ تَوَكَّلْتُ عَلَى اللَّهِ، وَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ',
      translationEn:
      'In the name of Allah, I place my trust in Allah, and there is no might nor power except with Allah.',
      translationUr:
      'اللہ کے نام سے، میں نے اللہ پر بھروسہ کیا، اور کوئی طاقت اور قوت نہیں مگر اللہ کے ساتھ۔',
      reference: 'Abu Dawud: 5095, Tirmidhi: 3426',
    ),
    DuaEntity(
      id: 'hm2',
      titleEn: 'When Entering the House',
      titleUr: 'گھر میں داخل ہونے کی دعا',
      arabic:
      'اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَ الْمَوْلِجِ وَخَيْرَ الْمَخْرَجِ، بِسْمِ اللَّهِ وَلَجْنَا، وَبِسْمِ اللَّهِ خَرَجْنَا، وَعَلَى اللَّهِ رَبِّنَا تَوَكَّلْنَا',
      translationEn:
      'O Allah! I ask You for the good both when entering and when going out. In the name of Allah we enter, and in the name of Allah we leave, and upon Allah our Lord we rely.',
      translationUr:
      'اے اللہ! میں تجھ سے داخل ہونے کی اور نکلنے کی بھلائی مانگتا ہوں، اللہ کے نام سے ہم داخل ہوئے، اور اللہ کے نام سے ہم نکلے، اور اللہ جو ہمارا رب ہے اس پر ہم نے بھروسہ کیا۔',
      reference: 'Sunan Abi Dawud: 5096',
    )

  ];

  // ─── FOOD & DRINK ────────────────────────────────────────────────────────────
  static List<DuaEntity> foodDuas = [
    DuaEntity(
      id: 'fd1',
      titleEn: 'Before Eating',
      titleUr: 'کھانا شروع کرنے کی دعا',
      arabic: 'بِسْمِ اللَّهِ',
      translationEn: 'In the name of Allah.',
      translationUr: 'اللہ کے نام سے۔',
      reference: 'Abu Dawud: 3767',
    ),
    DuaEntity(
      id: 'fd2',
      titleEn: 'If You Forget to Say Bismillah Before Eating',
      titleUr: 'کھانے سے پہلے بسم اللہ بھول جائے تو',
      arabic: 'بِسْمِ اللَّهِ فِي أَوَّلِهِ وَآخِرِهِ',
      translationEn: 'In the name of Allah, at its beginning and at its end.',
      translationUr: 'اللہ کے نام سے اس کے شروع میں بھی اور آخر میں بھی۔',
      reference: 'Abu Dawud: 3767',
    ),
    DuaEntity(
      id: 'fd3',
      titleEn: 'After Eating',
      titleUr: 'کھانے کے بعد کی دعا',
      arabic:
      'الْحَمْدُ للهِ الَّذِي أَطْعَمَنِي هَذَا وَرَزَقَنِيهِ مِنْ غَيْرِ حَوْلٍ مِنِّي وَلَا قُوَّةٍ',
      translationEn:
      'Praise is to Allah who has fed me this and provided it for me without any might or power on my part.',
      translationUr:
      'تمام تعریفیں اللہ کے لیے ہیں جس نے مجھے یہ کھلایا اور بغیر میری کسی طاقت اور قوت کے مجھے یہ عطا کیا۔',
      reference: 'Abu Dawud: 4023, Tirmidhi: 3458',
    ),
    DuaEntity(
      id: 'fd4',
      titleEn: 'After Eating (Another Narration)',
      titleUr: 'کھانے کے بعد کی دوسری دعا',
      arabic:
      'الْحَمْدُ للهِ الَّذِي أَطْعَمَنَا وَسَقَانَا وَجَعَلَنَا مُسْلِمِينَ',
      translationEn:
      'Praise is to Allah who has fed us and given us drink and made us Muslims.',
      translationUr:
      'تمام تعریفیں اللہ کے لیے ہیں جس نے ہمیں کھلایا اور پلایا اور ہمیں مسلمان بنایا۔',
      reference: 'Abu Dawud: 3850',
    ),
    DuaEntity(
      id: 'fd5',
      titleEn: 'When Fasting and Someone Invites You to Eat',
      titleUr: 'روزے میں کھانے کی دعوت ملے تو',
      arabic: 'إِنِّي صَائِمٌ',
      translationEn: 'I am fasting.',
      translationUr: 'میں روزے سے ہوں۔',
      reference: 'Sahih Muslim: 1150',
    ),
    DuaEntity(
      id: 'fd6',
      titleEn: 'When Breaking the Fast (Iftar)',
      titleUr: 'روزہ افطار کرتے وقت کی دعا',
      arabic:
      'اللَّهُمَّ لَكَ صُمْتُ وَعَلَى رِزْقِكَ أَفْطَرْتُ',
      translationEn: 'O Allah, for You I have fasted and upon Your provision I break my fast.',
      translationUr: 'اے اللہ! میں نے تیرے لیے روزہ رکھا اور تیرے ہی رزق سے افطار کیا۔',
      reference: 'Abu Dawud: 2358',
    ),



    DuaEntity(
      id: 'fd9',
      titleEn: 'Before Drinking Water',
      titleUr: 'پانی پینے سے پہلے',
      arabic: 'بِسْمِ اللَّهِ',
      translationEn: 'In the name of Allah.',
      translationUr: 'اللہ کے نام سے۔',
      reference: 'Tirmidhi: 1885',
    ),
    DuaEntity(
      id: 'fd10',
      titleEn: 'After Drinking Water or Milk',
      titleUr: 'دودھ پینے کے بعد کی دعا',
      arabic: 'اللَّهُمَّ بَارِكْ لَنَا فِيهِ وَزِدْنَا مِنْهُ',
      translationEn: 'O Allah, bless us in it and give us more of it.',
      translationUr: 'اے اللہ! اس میں ہمارے لیے برکت دے اور اس میں اضافہ فرما۔',
      reference: 'Abu Dawud: 3730',
    ),
  ];

  // ─── MOSQUE ───────────────────────────────────────────────────────────────────
  static List<DuaEntity> mosqueDuas = [
    DuaEntity(
      id: 'mq1',
      titleEn: 'When Entering the Mosque',
      titleUr: 'مسجد میں داخل ہوتے وقت',
      arabic:
      'اللَّهُمَّ افْتَحْ لِي أَبْوَابَ رَحْمَتِكَ',
      translationEn: 'O Allah, open the gates of Your mercy for me.',
      translationUr: 'اے اللہ! میرے لیے اپنی رحمت کے دروازے کھول دے۔',
      reference: 'Sahih Muslim: 713',
    ),
    DuaEntity(
      id: 'mq2',
      titleEn: 'When Leaving the Mosque',
      titleUr: 'مسجد سے نکلتے وقت',
      arabic:
      'اللَّهُمَّ إِنِّي أَسْأَلُكَ مِنْ فَضْلِكَ',
      translationEn: 'O Allah, I ask You of Your favour.',
      translationUr: 'اے اللہ! میں تجھ سے تیرا فضل مانگتا ہوں۔',
      reference: 'Sahih Muslim: 713',
    ),
  ];

  // ─── ADHAN (CALL TO PRAYER) ───────────────────────────────────────────────────
  static List<DuaEntity> adhanDuas = [
    DuaEntity(
      id: 'az1',
      titleEn: 'After Hearing the Adhan',
      titleUr: 'اذان سننے کے بعد کی دعا',
      arabic:
      'اللَّهُمَّ رَبَّ هَذِهِ الدَّعْوَةِ التَّامَّةِ وَالصَّلَاةِ الْقَائِمَةِ آتِ مُحَمَّداً الْوَسِيلَةَ وَالْفَضِيلَةَ وَابْعَثْهُ مَقَاماً مَحْمُوداً الَّذِي وَعَدْتَهُ',
      translationEn:
      'O Allah, Lord of this perfect call and the prayer to be offered, grant Muhammad the privilege and the eminence, and resurrect him to the praised position that You have promised him.',
      translationUr:
      'اے اللہ! اس کامل دعوت اور قائم ہونے والی نماز کے رب، محمد ﷺ کو وسیلہ اور فضیلت عطا فرما، اور انہیں مقام محمود پر مبعوث فرما جس کا تو نے ان سے وعدہ کیا ہے۔',
      reference: 'Sahih al-Bukhari: 614',
    ),
    DuaEntity(
      id: 'az2',
      titleEn: 'Repeat After the Muadhdhin (at Hayya alas-Salah)',
      titleUr: 'حي على الصلاة پر یہ کہیں',
      arabic: 'لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ',
      translationEn: 'There is no might nor power except with Allah.',
      translationUr: 'کوئی طاقت اور قوت نہیں مگر اللہ کے ساتھ۔',
      reference: 'Sahih al-Bukhari: 613',
    ),
  ];

  // ─── SALAH (PRAYER) ──────────────────────────────────────────────────────────
  static List<DuaEntity> salahDuas = [
    DuaEntity(
      id: 'sl1',
      titleEn: 'After Finishing Salah (After Tasleem)',
      titleUr: 'نماز کے بعد کی دعا',
      arabic:
      'اللَّهُمَّ أَنْتَ السَّلَامُ وَمِنْكَ السَّلَامُ تَبَارَكْتَ يَا ذَا الْجَلَالِ وَالْإِكْرَامِ',
      translationEn:
      'O Allah, You are Peace and from You comes peace. Blessed are You, O Owner of majesty and honour.',
      translationUr:
      'اے اللہ! تو سلامتی والا ہے اور تجھی سے سلامتی آتی ہے، تو بابرکت ہے اے جلال اور عزت والے۔',
      reference: 'Sahih Muslim: 591',
    ),
    DuaEntity(
      id: 'sl2',
      titleEn: 'Between Adhan and Iqamah',
      titleUr: 'اذان اور اقامت کے درمیان دعا',
      arabic: 'الدُّعَاءُ لَا يُرَدُّ بَيْنَ الْأَذَانِ وَالْإِقَامَةِ',
      translationEn:
      'Supplicate between the adhan and iqamah; this time is when dua is not rejected.',
      translationUr:
      'اذان اور اقامت کے درمیان دعا مانگو؛ یہ وقت ہے جب دعا رد نہیں ہوتی۔',
      reference: 'Abu Dawud: 521',
    ),
  ];

  // ─── TRAVEL ──────────────────────────────────────────────────────────────────
  static List<DuaEntity> travelDuas = [
    DuaEntity(
      id: 'tr1',
      titleEn: 'When Riding or Boarding a Vehicle',
      titleUr: 'سواری پر سوار ہونے کی دعا',
      arabic:
      'بِسْمِ اللَّهِ، الْحَمْدُ للهِ، سُبْحَانَ الَّذِي سَخَّرَ لَنَا هَذَا وَمَا كُنَّا لَهُ مُقْرِنِينَ وَإِنَّا إِلَى رَبِّنَا لَمُنْقَلِبُونَ',
      translationEn:
      'In the name of Allah, all praise is for Allah. How perfect He is, the One Who has placed this (transport) at our service and we ourselves would not have been capable of that, and to our Lord is our final destiny.',
      translationUr:
      'اللہ کے نام سے، تمام تعریفیں اللہ کے لیے ہیں۔ پاک ہے وہ ذات جس نے اسے ہمارے لیے مسخر کر دیا ورنہ ہم اسے قابو میں نہیں کر سکتے تھے، اور ہم اپنے رب کی طرف لوٹنے والے ہیں۔',
      reference: 'Abu Dawud: 2602',
    ),
    DuaEntity(
      id: 'tr3',
      titleEn: 'When Returning from a Journey',
      titleUr: 'سفر سے واپسی پر دعا',
      arabic:
      'آيِبُونَ تَائِبُونَ عَابِدُونَ لِرَبِّنَا حَامِدُونَ',
      translationEn:
      'We return, repent, worship and praise our Lord.',
      translationUr:
      'ہم لوٹنے والے، توبہ کرنے والے، عبادت کرنے والے اور اپنے رب کی تعریف کرنے والے ہیں۔',
      reference: 'Sahih al-Bukhari: 3084',
    ),
    DuaEntity(
      id: 'tr4',
      titleEn: 'When Stopping at a Place During Travel',
      titleUr: 'سفر میں کسی جگہ رکنے کی دعا',
      arabic:
      'أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ',
      translationEn:
      'I seek refuge in the perfect words of Allah from the evil of what He has created.',
      translationUr:
      'میں اللہ کے کامل کلمات کی پناہ مانگتا ہوں اس کی مخلوق کے شر سے۔',
      reference: 'Sahih Muslim: 2708',
    ),
    DuaEntity(
      id: 'tr5',
      titleEn: 'When Entering a Town or City',
      titleUr: 'کسی شہر یا بستی میں داخل ہوتے وقت',
      arabic:
      'اللَّهُمَّ رَبَّ السَّمَوَاتِ السَّبْعِ وَمَا أَظْلَلْنَ وَرَبَّ الأَرَضِينَ السَّبْعِ وَمَا أَقْلَلْنَ وَرَبَّ الشَّيَاطِينِ وَمَا أَضْلَلْنَ وَرَبَّ الرِّيَاحِ وَمَا ذَرَيْنَ، أَسْأَلُكَ خَيْرَ هَذِهِ الْقَرْيَةِ وَخَيْرَ أَهْلِهَا وَخَيْرَ مَا فِيهَا، وَأَعُوذُ بِكَ مِنْ شَرِّهَا وَشَرِّ أَهْلِهَا وَشَرِّ مَا فِيهَا',
      translationEn:
      'O Allah, Lord of the seven heavens and what they shade, Lord of the seven earths and what they carry, Lord of the devils and what they lead astray, Lord of the winds and what they scatter. I ask You for the good of this town, the good of its people and the good within it, and I seek refuge in You from its evil, the evil of its people and the evil within it.',
      translationUr:
      'اے اللہ! سات آسمانوں اور جو ان کے سائے میں ہے اس کے رب، سات زمینوں اور جو انہوں نے اٹھا رکھا ہے اس کے رب، شیاطین اور جو انہوں نے گمراہ کیا ہے اس کے رب، ہواؤں اور جو انہوں نے اڑایا ہے اس کے رب! میں تجھ سے اس بستی کی بھلائی، اس کے لوگوں کی بھلائی اور اس میں موجود بھلائی مانگتا ہوں، اور اس کے شر سے، اس کے لوگوں کے شر سے اور اس میں موجود شر سے تیری پناہ مانگتا ہوں۔',
      reference: 'al-Hakim: 2/100, graded Sahih by Nawawi',
    ),
  ];

  // ─── MARKETPLACE / SHOPPING ──────────────────────────────────────────────────
  static List<DuaEntity> marketDuas = [
    DuaEntity(
      id: 'mk1',
      titleEn: 'When Entering the Market',
      titleUr: 'بازار میں داخل ہونے کی دعا',
      arabic:
      'لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ يُحْيِي وَيُمِيتُ وَهُوَ حَيٌّ لَا يَمُوتُ بِيَدِهِ الْخَيْرُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ',
      translationEn:
      'There is none worthy of worship except Allah, alone, without partner. To Him belongs sovereignty and all praise. He gives life and causes death, and He is living and does not die. In His hand is all good and He is capable of all things.',
      translationUr:
      'اللہ کے سوا کوئی معبود نہیں، اکیلا ہے، اس کا کوئی شریک نہیں، اسی کی بادشاہت ہے اور اسی کے لیے تعریف ہے، وہ زندہ کرتا ہے اور مارتا ہے، وہ خود زندہ ہے کبھی نہیں مرے گا، اس کے ہاتھ میں ہر بھلائی ہے اور وہ ہر چیز پر قادر ہے۔',
      reference: 'Tirmidhi: 3428',
    ),
  ];

  // ─── GREETING & VISITING ─────────────────────────────────────────────────────
  static List<DuaEntity> greetingDuas = [
    DuaEntity(
      id: 'gr1',
      titleEn: 'Islamic Greeting (Salam)',
      titleUr: 'اسلامی سلام',
      arabic: 'السَّلَامُ عَلَيْكُمْ وَرَحْمَةُ اللَّهِ وَبَرَكَاتُهُ',
      translationEn: 'Peace be upon you, and the mercy of Allah and His blessings.',
      translationUr: 'تم پر سلامتی ہو، اور اللہ کی رحمت اور اس کی برکتیں ہوں۔',
      reference: 'Abu Dawud: 5195',
    ),
    DuaEntity(
      id: 'gr2',
      titleEn: 'Response to Salam',
      titleUr: 'سلام کا جواب',
      arabic: 'وَعَلَيْكُمُ السَّلَامُ وَرَحْمَةُ اللَّهِ وَبَرَكَاتُهُ',
      translationEn: 'And upon you be peace, and the mercy of Allah and His blessings.',
      translationUr: 'اور تم پر بھی سلامتی ہو، اللہ کی رحمت اور اس کی برکتیں ہوں۔',
      reference: 'Quran 4:86',
    ),
    DuaEntity(
      id: 'gr3',
      titleEn: 'When Meeting a Fellow Muslim',
      titleUr: 'مسلمان بھائی سے ملتے وقت',
      arabic: 'السَّلَامُ عَلَيْكُمْ',
      translationEn: 'Peace be upon you.',
      translationUr: 'تم پر سلامتی ہو۔',
      reference: 'Sahih al-Bukhari: 12',
    ),
    DuaEntity(
      id: 'gr4',
      titleEn: 'When Saying Goodbye',
      titleUr: 'رخصت کے وقت',
      arabic: 'أَسْتَوْدِعُكَ اللَّهَ الَّذِي لَا تَضِيعُ وَدَائِعُهُ',
      translationEn:
      'I place you in the trust of Allah, whose trusts are never lost.',
      translationUr:
      'میں تجھے اللہ کے سپرد کرتا ہوں جس کی امانتیں کبھی ضائع نہیں ہوتیں۔',
      reference: 'Ibn Majah: 2825',
    ),
    DuaEntity(
      id: 'gr5',
      titleEn: 'When Someone Does You a Favour',
      titleUr: 'کوئی احسان کرے تو',
      arabic: 'جَزَاكَ اللَّهُ خَيْراً',
      translationEn: 'May Allah reward you with good.',
      translationUr: 'اللہ تجھے بہترین بدلہ دے۔',
      reference: 'Tirmidhi: 2035',
    ),


  ];

  // ─── SNEEZING & YAWNING ──────────────────────────────────────────────────────
  static List<DuaEntity> sneezeYawnDuas = [
    DuaEntity(
      id: 'sy1',
      titleEn: 'After Sneezing',
      titleUr: 'چھینک آنے پر',
      arabic: 'الْحَمْدُ للهِ',
      translationEn: 'All praise is for Allah.',
      translationUr: 'تمام تعریفیں اللہ کے لیے ہیں۔',
      reference: 'Sahih al-Bukhari: 6224',
    ),
    DuaEntity(
      id: 'sy2',
      titleEn: 'Reply to Someone Who Sneezes',
      titleUr: 'چھینکنے والے کا جواب',
      arabic: 'يَرْحَمُكَ اللَّهُ',
      translationEn: 'May Allah have mercy upon you.',
      translationUr: 'اللہ تم پر رحم کرے۔',
      reference: 'Sahih al-Bukhari: 6224',
    ),
    DuaEntity(
      id: 'sy3',
      titleEn: 'Response After Being Told Yarhamukallah',
      titleUr: 'یرحمک اللہ کے جواب میں',
      arabic: 'يَهْدِيكُمُ اللَّهُ وَيُصْلِحُ بَالَكُمْ',
      translationEn: 'May Allah guide you and set your affairs in order.',
      translationUr: 'اللہ تمہیں ہدایت دے اور تمہارے حال کو سنوارے۔',
      reference: 'Sahih al-Bukhari: 6224',
    ),
    DuaEntity(
      id: 'sy4',
      titleEn: 'When Yawning',
      titleUr: 'جمائی آنے پر',
      arabic: 'أَعُوذُ بِاللَّهِ مِنَ الشَّيْطَانِ الرَّجِيمِ',
      translationEn: 'I seek refuge in Allah from the accursed devil.',
      translationUr: 'میں مردود شیطان سے اللہ کی پناہ مانگتا ہوں۔',
      reference: 'Sahih al-Bukhari: 6226',
    ),
  ];

  // ─── WEATHER / RAIN / WIND ────────────────────────────────────────────────────
  static List<DuaEntity> weatherDuas = [
    DuaEntity(
      id: 'wt1',
      titleEn: 'When It Rains',
      titleUr: 'بارش ہوتے وقت',
      arabic: 'اللَّهُمَّ صَيِّباً نَافِعاً',
      translationEn: 'O Allah, (bring) a beneficial rain.',
      translationUr: 'اے اللہ! نفع بخش بارش برسا۔',
      reference: 'Sahih al-Bukhari: 1032',
    ),
    DuaEntity(
      id: 'wt2',
      titleEn: 'After Rain',
      titleUr: 'بارش کے بعد',
      arabic: 'مُطِرْنَا بِفَضْلِ اللَّهِ وَرَحْمَتِهِ',
      translationEn: 'We have been given rain by the grace and mercy of Allah.',
      translationUr: 'ہم پر اللہ کے فضل اور رحمت سے بارش ہوئی۔',
      reference: 'Sahih al-Bukhari: 846, Sahih Muslim: 71',
    ),
    DuaEntity(
      id: 'wt3',
      titleEn: 'When Hearing Thunder',
      titleUr: 'گرج سننے پر',
      arabic: 'سُبْحَانَ الَّذِي يُسَبِّحُ الرَّعْدُ بِحَمْدِهِ وَالْمَلَائِكَةُ مِنْ خِيفَتِهِ',
      translationEn:
      'How perfect He is, (the One) Whom the thunder glorifies and praises, and so do the angels, out of fear of Him.',
      translationUr:
      'پاک ہے وہ ذات جس کی تعریف کے ساتھ بادل گرجتا ہے اور فرشتے اس کے ڈر سے تسبیح کرتے ہیں۔',
      reference: 'al-Muwatta: 2/992, Authenticated by Hakim',
    ),
    DuaEntity(
      id: 'wt4',
      titleEn: 'When Seeing the Crescent Moon',
      titleUr: 'نیا چاند دیکھنے پر',
      arabic:
      '، اللَّهُمَّ أَهِلَّهُ عَلَيْنَا بِالْأَمْنِ وَالْإِيمَانِ وَالسَّلَامَةِ وَالْإِسْلَامِ، رَبِّي وَرَبُّكَ اللَّهُ',
      translationEn:
      'A O Allah, let this moon appear on us with security, faith, safety and Islam. My Lord and your Lord is Allah.',
      translationUr:
      'ا اے اللہ! اس چاند کو ہم پر امن، ایمان، سلامتی اور اسلام کے ساتھ طلوع فرما۔ میرا اور تیرا رب اللہ ہے۔',
      reference: 'Tirmidhi: 3451, Ahmad',
    ),DuaEntity(
      id: 'wt5',
      titleEn: 'When Strong Wind Blows',
      titleUr: 'تیز ہوا چلنے پر',
      arabic:
      'اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَهَا وَخَيْرَ مَا فِيهَا وَخَيْرَ مَا أُرْسِلَتْ بِهِ وَأَعُوذُ بِكَ مِنْ شَرِّهَا وَشَرِّ مَا فِيهَا وَشَرِّ مَا أُرْسِلَتْ بِهِ',
      translationEn:
      'O Allah, I ask You for the good of it, the good of what it contains, and the good of what it is sent with; and I seek refuge in You from the evil of it, the evil of what it contains, and the evil of what it is sent with.',
      translationUr:
      'اے اللہ! میں تجھ سے اس کی بھلائی، اس میں جو ہے اس کی بھلائی اور اسے جس کے ساتھ بھیجا گیا اس کی بھلائی مانگتا ہوں، اور اس کے شر سے، اس میں جو ہے اس کے شر سے اور اسے جس کے ساتھ بھیجا گیا اس کے شر سے تیری پناہ مانگتا ہو۔',
      reference: 'Sahih Muslim: 899',
    )

  ];

  // ─── MORNING ROUTINE ─────────────────────────────────────────────────────────
  static List<DuaEntity> morningDuas = [

  ];

  // ─── SLEEPING ────────────────────────────────────────────────────────────────
  static List<DuaEntity> sleepingDuas = [
    DuaEntity(
      id: 'sp1',
      titleEn: 'Before Sleeping',
      titleUr: 'سونے کی دعا',
      arabic: 'بِاسْمِكَ اللَّهُمَّ أَمُوتُ وَأَحْيَا',
      translationEn: 'In Your name, O Allah, I die and I live.',
      translationUr: 'اے اللہ! تیرے ہی نام کے ساتھ میں مرتا ہوں اور جیتا ہوں۔',
      reference: 'Sahih al-Bukhari: 6312',
    ),


    DuaEntity(
      id: 'sp4',
      titleEn: 'When Having a Nightmare',
      titleUr: 'برا خواب دیکھنے پر',
      arabic:
      'أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ غَضَبِهِ وَعِقَابِهِ وَشَرِّ عِبَادِهِ وَمِنْ هَمَزَاتِ الشَّيَاطِينِ وَأَنْ يَحْضُرُونِ',
      translationEn:
      'I seek refuge in the perfect words of Allah from His anger, His punishment, from the evil of His slaves, from the harassment of the devils and from their presence.',
      translationUr:
      'میں اللہ کے کامل کلمات کی پناہ مانگتا ہوں اس کے غضب سے، اس کے عذاب سے، اس کے بندوں کے شر سے، شیطانوں کے وسوسوں سے اور ان کی حاضری سے۔',
      reference: 'Abu Dawud: 3893, Tirmidhi: 3528',
    ),
  ];

  // ─── HOME & FAMILY ────────────────────────────────────────────────────────────
  static List<DuaEntity> homeFamilyDuas = [
    DuaEntity(
      id: 'hf1',
      titleEn: 'Dua for Parents',
      titleUr: 'والدین کے لیے دعا',
      arabic: 'رَبِّ ارْحَمْهُمَا كَمَا رَبَّيَانِي صَغِيراً',
      translationEn:
      'My Lord, have mercy upon them as they brought me up (when I was) small.',
      translationUr:
      'اے میرے رب! ان پر رحم فرما جیسا کہ انہوں نے بچپن میں مجھے پالا۔',
      reference: 'Quran 17:24',
    ),
    DuaEntity(
      id: 'hf2',
      titleEn: 'Dua for Spouse and Children',
      titleUr: 'بیوی اور بچوں کے لیے دعا',
      arabic:
      'رَبَّنَا هَبْ لَنَا مِنْ أَزْوَاجِنَا وَذُرِّيَّاتِنَا قُرَّةَ أَعْيُنٍ وَاجْعَلْنَا لِلْمُتَّقِينَ إِمَاماً',
      translationEn:
      'Our Lord, grant us from among our wives and offspring comfort to our eyes and make us an example for the righteous.',
      translationUr:
      'اے ہمارے رب! ہمیں ہماری بیویوں اور اولادوں سے آنکھوں کی ٹھنڈک عطا فرما اور ہمیں پرہیزگاروں کا امام بنا۔',
      reference: 'Quran 25:74',
    ),
    DuaEntity(
      id: 'hf3',
      titleEn: 'Dua for Righteous Children',
      titleUr: 'نیک اولاد کی دعا',
      arabic: 'رَبِّ هَبْ لِي مِنَ الصَّالِحِينَ',
      translationEn: 'My Lord, grant me (a child) from among the righteous.',
      translationUr: 'اے میرے رب! مجھے نیک (اولاد) عطا فرما۔',
      reference: 'Quran 37:100',
    ),

  ];

  // ─── WORK & STUDY ─────────────────────────────────────────────────────────────
  static List<DuaEntity> workStudyDuas = [
    DuaEntity(
      id: 'ws1',
      titleEn: 'Dua for Knowledge',
      titleUr: 'علم کی دعا',
      arabic: 'رَبِّ زِدْنِي عِلْماً',
      translationEn: 'My Lord, increase me in knowledge.',
      translationUr: 'اے میرے رب! میرے علم میں اضافہ فرما۔',
      reference: 'Quran 20:114',
    ),
    DuaEntity(
      id: 'ws2',
      titleEn: 'Dua Before Studying or Starting Important Work',
      titleUr: 'پڑھائی یا اہم کام شروع کرنے سے پہلے',
      arabic:
      'رَبِّ اشْرَحْ لِي صَدْرِي وَيَسِّرْ لِي أَمْرِي وَاحْلُلْ عُقْدَةً مِنْ لِسَانِي يَفْقَهُوا قَوْلِي',
      translationEn:
      'My Lord, expand my breast (with assurance), ease my task for me, and remove the impediment from my speech so they may understand my speech.',
      translationUr:
      'اے میرے رب! میرا سینہ کھول دے، میرا کام آسان کر دے اور میری زبان کی گرہ کھول دے تاکہ لوگ میری بات سمجھ سکیں۔',
      reference: 'Quran 20:25-28',
    ),
    DuaEntity(
      id: 'ws3',
      titleEn: 'Dua for Tawakkul (Reliance on Allah) in Work',
      titleUr: 'کام میں توکل کی دعا',
      arabic:
      'حَسْبُنَا اللَّهُ وَنِعْمَ الْوَكِيلُ',
      translationEn: 'Allah is sufficient for us, and He is the best Disposer of affairs.',
      translationUr: 'اللہ ہمارے لیے کافی ہے اور وہ بہترین کارساز ہے۔',
      reference: 'Quran 3:173, Sahih al-Bukhari: 4563',
    ),
    DuaEntity(
      id: 'ws4',
      titleEn: 'When Facing a Difficult Task',
      titleUr: 'مشکل کام کے وقت',
      arabic:
      'اللَّهُمَّ لَا سَهْلَ إِلَّا مَا جَعَلْتَهُ سَهْلاً وَأَنْتَ تَجْعَلُ الْحَزْنَ إِذَا شِئْتَ سَهْلاً',
      translationEn:
      'O Allah, there is no ease except what You make easy, and You make the difficult easy when You will.',
      translationUr:
      'اے اللہ! کوئی آسانی نہیں مگر جسے تو آسان کرے، اور تو جب چاہے مشکل کو آسان بنا دیتا ہے۔',
      reference: 'Ibn Hibban: 974, Ibn al-Sunni: 351',
    ),
    DuaEntity(
      id: 'ws5',
      titleEn: 'Dua for Rizq (Sustenance)',
      titleUr: 'رزق کی دعا',
      arabic:
      'اللَّهُمَّ اكْفِنِي بِحَلَالِكَ عَنْ حَرَامِكَ وَأَغْنِنِي بِفَضْلِكَ عَمَّنْ سِوَاكَ',
      translationEn:
      'O Allah, suffice me with what You have made lawful against what You have made forbidden, and enrich me by Your bounty against all others.',
      translationUr:
      'اے اللہ! حرام سے بچاتے ہوئے مجھے حلال سے کافی کر دے، اور اپنے فضل سے مجھے اپنے سوا سب سے بے نیاز کر دے۔',
      reference: 'Tirmidhi: 3563',
    ),
    DuaEntity(
      id: 'ws6',
      titleEn: 'Dua for Ease in Affairs',
      titleUr: 'معاملات میں آسانی کی دعا',
      arabic: 'رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ',
      translationEn:
      'Our Lord, give us in this world (that which is) good and in the Hereafter (that which is) good and protect us from the punishment of the Fire.',
      translationUr:
      'اے ہمارے رب! ہمیں دنیا میں بھی بھلائی دے اور آخرت میں بھی بھلائی دے اور ہمیں آگ کے عذاب سے بچا۔',
      reference: 'Quran 2:201',
    ),
  ];

  // ─── MIRROR DUA ──────────────────────────────────────────────────────────────
  static List<DuaEntity> mirrorDuas = [
    DuaEntity(
      id: 'mr1',
      titleEn: 'When Looking in the Mirror',
      titleUr: 'آئینہ دیکھنے کی دعا',
      arabic:
      'اللَّهُمَّ أَنْتَ حَسَّنْتَ خَلْقِي فَحَسِّنْ خُلُقِي',
      translationEn:
      'O Allah, You have made my physical constitution good, so make my character good as well.',
      translationUr:
      'اے اللہ! تو نے میری ظاہری ساخت کو اچھا بنایا ہے تو میرے اخلاق کو بھی اچھا بنا دے۔',
      reference: 'Ahmad: 3823, Ibn Hibban: 959',
    ),
  ];

  // ─── MISCELLANEOUS DAILY DUAS ─────────────────────────────────────────────────
  static List<DuaEntity> miscDuas = [

    DuaEntity(
      id: 'ms2',
      titleEn: 'When Something Good Happens or Is Praised',
      titleUr: 'خوشی کی بات ہو یا تعریف ملے',
      arabic: 'الْحَمْدُ للهِ',
      translationEn: 'All praise is for Allah.',
      translationUr: 'تمام تعریفیں اللہ کے لیے ہیں۔',
      reference: 'Quran 1:2, Sahih al-Bukhari: 4812',
    ),

    DuaEntity(
      id: 'ms4',
      titleEn: 'When Something Undesirable Happens',
      titleUr: 'ناپسندیدہ بات ہو جائے',
      arabic: 'قَدَّرَ اللَّهُ وَمَا شَاءَ فَعَلَ',
      translationEn: 'Allah has decreed and what He wills He does.',
      translationUr: 'اللہ نے تقدیر میں لکھا اور جو وہ چاہتا ہے کر دیتا ہے۔',
      reference: 'Sahih Muslim: 2664',
    ),
    DuaEntity(
      id: 'ms5',
      titleEn: 'When Angry',
      titleUr: 'غصہ آنے پر',
      arabic: 'أَعُوذُ بِاللَّهِ مِنَ الشَّيْطَانِ الرَّجِيمِ',
      translationEn: 'I seek refuge in Allah from the accursed devil.',
      translationUr: 'میں مردود شیطان سے اللہ کی پناہ مانگتا ہوں۔',
      reference: 'Sahih al-Bukhari: 3282, Sahih Muslim: 2610',
    ),
    DuaEntity(
      id: 'ms6',
      titleEn: 'When Seeing Someone in Trial or Calamity',
      titleUr: 'کسی کو مصیبت میں دیکھنے پر',
      arabic:
      'الْحَمْدُ للهِ الَّذِي عَافَانِي مِمَّا ابْتَلَاكَ بِهِ وَفَضَّلَنِي عَلَى كَثِيرٍ مِمَّنْ خَلَقَ تَفْضِيلاً',
      translationEn:
      'All praise is for Allah who saved me from that which He has tested you with, and favoured me greatly over many of those He has created.',
      translationUr:
      'تمام تعریفیں اللہ کے لیے ہیں جس نے مجھے اس آزمائش سے بچایا جس میں اس نے تجھے مبتلا کیا اور اپنی بہت سی مخلوق پر مجھے فضیلت دی۔',
      reference: 'Tirmidhi: 3432',
    ),

    DuaEntity(
      id: 'ms8',
      titleEn: 'When Experiencing Hardship',
      titleUr: 'مصیبت اور تکلیف کے وقت',
      arabic:
      'إِنَّا للهِ وَإِنَّا إِلَيْهِ رَاجِعُونَ، اللَّهُمَّ أْجُرْنِي فِي مُصِيبَتِي وَأَخْلِفْ لِي خَيْراً مِنْهَا',
      translationEn:
      'Indeed we belong to Allah, and indeed to Him we will return. O Allah, recompense me for my affliction and replace it for me with something better.',
      translationUr:
      'بے شک ہم اللہ کے ہیں اور اسی کی طرف لوٹنے والے ہیں۔ اے اللہ! مجھے میری مصیبت کا اجر دے اور اس سے بہتر بدل دے۔',
      reference: 'Sahih Muslim: 918',
    ),
    DuaEntity(
      id: 'ms9',
      titleEn: 'When Feeling Overwhelmed (Anxiety)',
      titleUr: 'پریشانی اور غم میں',
      arabic:
      'اللَّهُمَّ إِنِّي عَبْدُكَ وَابْنُ عَبْدِكَ وَابْنُ أَمَتِكَ نَاصِيَتِي بِيَدِكَ مَاضٍ فِيَّ حُكْمُكَ عَدْلٌ فِيَّ قَضَاؤُكَ أَسْأَلُكَ بِكُلِّ اسْمٍ هُوَ لَكَ سَمَّيْتَ بِهِ نَفْسَكَ أَوْ أَنْزَلْتَهُ فِي كِتَابِكَ أَوْ عَلَّمْتَهُ أَحَداً مِنْ خَلْقِكَ أَوِ اسْتَأْثَرْتَ بِهِ فِي عِلْمِ الْغَيْبِ عِنْدَكَ أَنْ تَجْعَلَ الْقُرْآنَ رَبِيعَ قَلْبِي وَنُورَ صَدْرِي وَجِلَاءَ حُزْنِي وَذَهَابَ هَمِّي',
      translationEn:
      'O Allah, I am Your slave and the son of Your slave and the son of Your female slave. My forelock is in Your hand. Your command over me is forever executed and Your decree over me is just. I ask You by every Name belonging to You which You named Yourself with, or revealed in Your Book, or You taught to any of Your creation, or You have preserved in the knowledge of the unseen with You, that You make the Quran the spring of my heart, the light of my chest, the departure of my sadness and the release of my anxiety.',
      translationUr:
      'اے اللہ! میں تیرا بندہ ہوں، تیرے بندے کا بیٹا ہوں، تیری بندی کا بیٹا ہوں، میری پیشانی تیرے ہاتھ میں ہے، تیرا حکم مجھ پر جاری ہے، تیرا فیصلہ میرے بارے میں عدل پر ہے۔ میں تجھ سے تیرے ہر اس نام کے واسطے سے مانگتا ہوں جو تو نے خود رکھا یا اپنی کتاب میں نازل کیا یا اپنی کسی مخلوق کو سکھایا یا علم غیب میں اپنے پاس محفوظ رکھا کہ قرآن کو میرے دل کی بہار، میرے سینے کا نور، میرے غم کا علاج اور میری پریشانی کا خاتمہ بنا دے۔',
      reference: 'Ahmad: 3712 – Graded Sahih by Ibn Hibban and others',
    ),

    DuaEntity(
      id: 'ms11',
      titleEn: 'When Pleased by Good Deeds',
      titleUr: 'نیک عمل پر خوشی ہو تو',
      arabic:
      'اللَّهُمَّ لَا تَجْعَلْ مُصِيبَتَنَا فِي دِينِنَا',
      translationEn: 'O Allah, do not make our calamity in our religion.',
      translationUr: 'اے اللہ! ہماری مصیبت ہمارے دین میں نہ ڈال۔',
      reference: 'Tirmidhi: 3502',
    ),
    DuaEntity(
      id: 'ms12',
      titleEn: 'Seeking Forgiveness Throughout the Day',
      titleUr: 'دن میں استغفار',
      arabic: 'أَسْتَغْفِرُ اللَّهَ وَأَتُوبُ إِلَيْهِ',
      translationEn: 'I seek the forgiveness of Allah and repent to Him.',
      translationUr: 'میں اللہ سے مغفرت مانگتا ہوں اور اس کی طرف توبہ کرتا ہوں۔',
      reference: 'Sahih al-Bukhari: 6307, Sahih Muslim: 2702',
    ),
    DuaEntity(
      id: 'ms13',
      titleEn: 'Seeking Forgiveness (Sayyid al-Istighfar)',
      titleUr: 'سید الاستغفار',
      arabic:
      'اللَّهُمَّ أَنْتَ رَبِّي لَا إِلَهَ إِلَّا أَنْتَ خَلَقْتَنِي وَأَنَا عَبْدُكَ وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ وَأَبُوءُ بِذَنْبِي فَاغْفِرْ لِي فَإِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ',
      translationEn:
      'O Allah, You are my Lord, there is none worthy of worship except You. You created me and I am Your slave, and I am faithful to my covenant and my promise as much as I can. I seek refuge with You from all the evil I have done. I acknowledge before You all the blessings You have bestowed upon me, and I confess to You all my sins. So I entreat You to forgive my sins, for nobody can forgive sins except You.',
      translationUr:
      'اے اللہ! تو میرا رب ہے، تیرے سوا کوئی معبود نہیں، تو نے مجھے پیدا کیا اور میں تیرا بندہ ہوں، میں اپنی استطاعت کے مطابق تیرے عہد اور وعدے پر قائم ہوں، جو برائیاں میں نے کی ہیں ان کے شر سے تیری پناہ مانگتا ہوں، اپنے اوپر تیری نعمتوں کا اقرار کرتا ہوں اور اپنے گناہوں کا اعتراف کرتا ہوں، پس مجھے بخش دے کیونکہ گناہ معاف کرنے والا تیرے سوا کوئی نہیں۔',
      reference: 'Sahih al-Bukhari: 6306',
    ),

    DuaEntity(
      id: 'ms16',
      titleEn: 'When Wearing New Clothes (Personal Dua)',
      titleUr: 'نئے کپڑے پہنتے وقت',
      arabic:
      'اللَّهُمَّ لَكَ الْحَمْدُ أَنْتَ كَسَوْتَنِيهِ أَسْأَلُكَ مِنْ خَيْرِهِ وَخَيْرِ مَا صُنِعَ لَهُ وَأَعُوذُ بِكَ مِنْ شَرِّهِ وَشَرِّ مَا صُنِعَ لَهُ',
      translationEn:
      'O Allah, for You is all praise, You have clothed me with it. I ask You for its good and the good of what it was made for, and I seek refuge with You from its evil and the evil of what it was made for.',
      translationUr:
      'اے اللہ! تمام تعریفیں تیرے لیے ہیں، تو نے مجھے یہ پہنایا، میں تجھ سے اس کی بھلائی اور جس مقصد کے لیے بنایا گیا اس کی بھلائی مانگتا ہوں، اور اس کے شر اور جس مقصد کے لیے بنایا گیا اس کے شر سے تیری پناہ مانگتا ہوں۔',
      reference: 'Abu Dawud: 4020, Tirmidhi: 1767',
    ),

    DuaEntity(
      id: 'ms18',
      titleEn: 'Before Starting Any Speech or Khutbah',
      titleUr: 'کوئی بھی تقریر یا گفتگو شروع کرنے سے پہلے',
      arabic:
      'إِنَّ الْحَمْدَ للهِ، نَحْمَدُهُ وَنَسْتَعِينُهُ وَنَسْتَغْفِرُهُ، وَنَعُوذُ بِاللَّهِ مِنْ شُرُورِ أَنْفُسِنَا وَمِنْ سَيِّئَاتِ أَعْمَالِنَا، مَنْ يَهْدِهِ اللَّهُ فَلَا مُضِلَّ لَهُ، وَمَنْ يُضْلِلْ فَلَا هَادِيَ لَهُ',
      translationEn:
      'Verily, all praise is for Allah. We praise Him, seek His help, seek His forgiveness. We seek refuge in Allah from the evil of our souls and the evil of our deeds. Whoever Allah guides, there is none to misguide him, and whoever Allah misguides, there is none to guide him.',
      translationUr:
      'بے شک تمام تعریفیں اللہ کے لیے ہیں۔ ہم اس کی حمد کرتے ہیں، اس سے مدد مانگتے ہیں اور اس سے مغفرت چاہتے ہیں۔ ہم اللہ کی پناہ مانگتے ہیں اپنے نفسوں کے شر اور اپنے برے اعمال سے۔ جسے اللہ ہدایت دے اسے کوئی گمراہ نہیں کر سکتا اور جسے وہ گمراہ کرے اسے کوئی ہدایت نہیں دے سکتا۔',
      reference: 'Sahih Muslim: 867, Abu Dawud: 1097',
    ),
    DuaEntity(
      id: 'ms19',
      titleEn: 'When Sitting in a Gathering',
      titleUr: 'مجلس میں بیٹھنے پر',
      arabic: 'بِسْمِ اللَّهِ',
      translationEn: 'In the name of Allah.',
      translationUr: 'اللہ کے نام سے۔',
      reference: 'Abu Dawud: 4857',
    ),
    DuaEntity(
      id: 'ms20',
      titleEn: 'Expiation of a Gathering (Kaffaratul Majlis)',
      titleUr: 'مجلس کا کفارہ',
      arabic:
      'سُبْحَانَكَ اللَّهُمَّ وَبِحَمْدِكَ أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا أَنْتَ أَسْتَغْفِرُكَ وَأَتُوبُ إِلَيْكَ',
      translationEn:
      'How perfect You are O Allah, and I praise You. I bear witness that none has the right to be worshipped except You. I seek Your forgiveness and repent to You.',
      translationUr:
      'اے اللہ! تو پاک ہے اور میں تیری تعریف کرتا ہوں، میں گواہی دیتا ہوں کہ تیرے سوا کوئی معبود نہیں، میں تجھ سے مغفرت مانگتا ہوں اور تیری طرف توبہ کرتا ہوں۔',
      reference: 'Abu Dawud: 4857',
    ),
    DuaEntity(
      id: 'ms21',
      titleEn: 'When Entering a New Home',
      titleUr: 'نئے گھر میں داخل ہونے پر',
      arabic:
      'اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَ الْمَوْلَجِ وَخَيْرَ الْمَخْرَجِ بِسْمِ اللَّهِ وَلَجْنَا وَبِسْمِ اللَّهِ خَرَجْنَا وَعَلَى اللَّهِ رَبِّنَا تَوَكَّلْنَا',
      translationEn:
      'O Allah, I ask You for the good of the entrance and the good of the exit. In the name of Allah we enter and in the name of Allah we leave, and upon Allah our Lord we trust.',
      translationUr:
      'اے اللہ! میں تجھ سے داخل ہونے کی بھلائی اور نکلنے کی بھلائی مانگتا ہوں۔ اللہ کے نام سے ہم داخل ہوئے اور اللہ کے نام سے نکلے، اور اللہ جو ہمارا رب ہے اس پر ہم نے بھروسہ کیا۔',
      reference: 'Abu Dawud: 5096',
    ),
    DuaEntity(
      id: 'ms22',
      titleEn: 'When Seeing the First Fruits of the Season',
      titleUr: 'موسم کا پہلا پھل دیکھنے پر',
      arabic:
      'اللَّهُمَّ بَارِكْ لَنَا فِي ثَمَرِنَا وَبَارِكْ لَنَا فِي مَدِينَتِنَا وَبَارِكْ لَنَا فِي صَاعِنَا وَبَارِكْ لَنَا فِي مُدِّنَا',
      translationEn:
      'O Allah, bless us in our fruit, bless us in our city, bless us in our Saa\' and bless us in our Mudd.',
      translationUr:
      'اے اللہ! ہمارے پھلوں میں برکت دے، ہمارے شہر میں برکت دے، ہمارے صاع میں برکت دے اور ہمارے مد میں برکت دے۔',
      reference: 'Sahih Muslim: 1373',
    ),
    DuaEntity(
      id: 'ms23',
      titleEn: 'When Hearing Good News',
      titleUr: 'خوشخبری سننے پر',
      arabic: 'الْحَمْدُ للهِ الَّذِي بِنِعْمَتِهِ تَتِمُّ الصَّالِحَاتُ',
      translationEn:
      'All praise is for Allah by Whose grace good deeds are completed.',
      translationUr:
      'تمام تعریفیں اللہ کے لیے ہیں جس کی نعمت سے نیک کام پورے ہوتے ہیں۔',
      reference: 'Ibn Majah: 3803',
    ),
    DuaEntity(
      id: 'ms24',
      titleEn: 'When Intending to Do Something',
      titleUr: 'کچھ کرنے کا ارادہ ہو تو',
      arabic: 'إِنْ شَاءَ اللَّهُ',
      translationEn: 'If Allah wills.',
      translationUr: 'اگر اللہ نے چاہا۔',
      reference: 'Quran 18:23-24',
    ),
    DuaEntity(
      id: 'ms25',
      titleEn: 'Dua When Praising Others (to avoid Evil Eye)',
      titleUr: 'تعریف کرتے وقت نظر بد سے بچنے کی دعا',
      arabic: 'مَا شَاءَ اللَّهُ لَا قُوَّةَ إِلَّا بِاللَّهِ',
      translationEn: 'Whatever Allah wills (will come to pass); there is no power except in Allah.',
      translationUr: 'اللہ نے جو چاہا (وہ ہوتا ہے)؛ کوئی طاقت نہیں مگر اللہ کے ساتھ۔',
      reference: 'Quran 18:39',
    ),

    DuaEntity(
      id: 'ms27',
      titleEn: 'Dua When Offered Something Undesirable',
      titleUr: 'ناپسند چیز پیش کی جائے تو',
      arabic: 'جَزَاكَ اللَّهُ خَيْراً',
      translationEn: 'May Allah reward you with good.',
      translationUr: 'اللہ تجھے بہترین بدلہ دے۔',
      reference: 'Tirmidhi: 2035',
    ),
    DuaEntity(
      id: 'ms28',
      titleEn: 'When Starting a New Venture or Business',
      titleUr: 'نیا کاروبار یا کام شروع کرتے وقت',
      arabic:
      'رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ',
      translationEn:
      'Our Lord, give us good in this world and good in the Hereafter, and protect us from the punishment of the Fire.',
      translationUr:
      'اے ہمارے رب! ہمیں دنیا میں بھی بھلائی دے اور آخرت میں بھی بھلائی دے اور ہمیں آگ کے عذاب سے بچا۔',
      reference: 'Quran 2:201',
    ),
    DuaEntity(
      id: 'ms29',
      titleEn: 'Protection for Children',
      titleUr: 'بچوں کو نظر بد سے محفوظ کرنا',
      arabic:
      'أُعِيذُكُمَا بِكَلِمَاتِ اللَّهِ التَّامَّةِ مِنْ كُلِّ شَيْطَانٍ وَهَامَّةٍ وَمِنْ كُلِّ عَيْنٍ لَامَّةٍ',
      translationEn:
      'I seek protection for you both in the perfect words of Allah from every devil and every poisonous creature, and from every evil eye.',
      translationUr:
      'میں تم دونوں کو اللہ کے کامل کلمات کی پناہ میں دیتا ہوں ہر شیطان، زہریلے جانور اور ہر نقصان دہ نظر سے۔',
      reference: 'Sahih al-Bukhari: 3371',
    ),
    DuaEntity(
      id: 'ms30',
      titleEn: 'When Visiting a Graveyard',
      titleUr: 'قبرستان جاتے وقت',
      arabic:
      'السَّلَامُ عَلَيْكُمْ أَهْلَ الدِّيَارِ مِنَ الْمُؤْمِنِينَ وَالْمُسْلِمِينَ وَإِنَّا إِنْ شَاءَ اللَّهُ بِكُمْ لَاحِقُونَ نَسْأَلُ اللَّهَ لَنَا وَلَكُمُ الْعَافِيَةَ',
      translationEn:
      'Peace be upon you, O inhabitants of these dwellings, from among the believers and those who are Muslims. And we will, if Allah wills, be joining you. We ask Allah for well-being for ourselves and for you.',
      translationUr:
      'تم پر سلامتی ہو اے اس جگہ کے رہنے والو، مومنوں اور مسلمانوں میں سے۔ اور ہم بھی ان شاء اللہ تم سے ملنے والے ہیں۔ ہم اپنے لیے اور تمہارے لیے اللہ سے عافیت مانگتے ہیں۔',
      reference: 'Sahih Muslim: 975',
    ),
    DuaEntity(
      id: 'ms31',
      titleEn: 'At the Time of Death (Talqin)',
      titleUr: 'موت کے وقت',
      arabic: 'لَا إِلَهَ إِلَّا اللَّهُ',
      translationEn: 'There is none worthy of worship except Allah.',
      translationUr: 'اللہ کے سوا کوئی معبود نہیں۔',
      reference: 'Sahih Muslim: 916',
    ),
    DuaEntity(
      id: 'ms32',
      titleEn: 'Upon Hearing of Someone\'s Death',
      titleUr: 'کسی کی موت کی خبر سن کر',
      arabic:
      'إِنَّا للهِ وَإِنَّا إِلَيْهِ رَاجِعُونَ، اللَّهُمَّ اغْفِرْ لَهُ وَارْحَمْهُ وَعَافِهِ وَاعْفُ عَنْهُ',
      translationEn:
      'Verily, to Allah we belong and to Him we return. O Allah, forgive him and have mercy on him, and grant him well-being and pardon him.',
      translationUr:
      'بے شک ہم اللہ کے ہیں اور اسی کی طرف لوٹنے والے ہیں۔ اے اللہ! اسے بخش دے، اس پر رحم فرما، اسے عافیت دے اور اسے معاف کر دے۔',
      reference: 'Sahih Muslim: 963',
    ),


    DuaEntity(
      id: 'ms35',
      titleEn: 'Dua Against Evil Eye (Ruqyah)',
      titleUr: 'نظر بد کے لیے دعا',
      arabic:
      'بِسْمِ اللَّهِ أَرْقِيكَ مِنْ كُلِّ شَيْءٍ يُؤْذِيكَ مِنْ شَرِّ كُلِّ نَفْسٍ أَوْ عَيْنٍ حَاسِدٍ اللَّهُ يَشْفِيكَ بِسْمِ اللَّهِ أَرْقِيكَ',
      translationEn:
      'In the name of Allah I perform ruqyah for you, from everything that harms you, from the evil of every soul or envious eye may Allah cure you. In the name of Allah I perform ruqyah for you.',
      translationUr:
      'اللہ کے نام سے میں تم پر دم کرتا ہوں، ہر اس چیز سے جو تمہیں نقصان دے، ہر نفس کے شر سے یا حسد کرنے والی آنکھ سے، اللہ تمہیں شفا دے۔ اللہ کے نام سے میں تم پر دم کرتا ہوں۔',
      reference: 'Sahih Muslim: 2186',
    ),
    DuaEntity(
      id: 'ms36',
      titleEn: 'When Looking at the Sky',
      titleUr: 'آسمان کی طرف دیکھتے وقت',
      arabic:
      'رَبَّنَا مَا خَلَقْتَ هَذَا بَاطِلاً سُبْحَانَكَ فَقِنَا عَذَابَ النَّارِ',
      translationEn:
      'Our Lord, You have not created this in vain. Glory be to You, so protect us from the punishment of the Fire.',
      translationUr:
      'اے ہمارے رب! تو نے یہ بیکار نہیں بنایا، تو پاک ہے، ہمیں آگ کے عذاب سے بچا۔',
      reference: 'Quran 3:191',
    ),
  ];

  // ─── ALL CATEGORIES ──────────────────────────────────────────────────────────
  static List<DuaCategory> categories = [
    DuaCategory(
        id: 'waking_up',
        titleEn: 'Waking Up',
        titleUr: 'بیدار ہونا',
        duas: wakingUpDuas),
    DuaCategory(
        id: 'toilet',
        titleEn: 'Toilet',
        titleUr: 'بیت الخلا',
        duas: toiletDuas),
    DuaCategory(
        id: 'wudu',
        titleEn: 'Wudu (Ablution)',
        titleUr: 'وضو',
        duas: wuduDuas),
    DuaCategory(
        id: 'clothing',
        titleEn: 'Clothing',
        titleUr: 'لباس',
        duas: clothingDuas),
    DuaCategory(
        id: 'home',
        titleEn: 'Home (Entering & Leaving)',
        titleUr: 'گھر (آنا اور جانا)',
        duas: homeDuas),
    DuaCategory(
        id: 'food',
        titleEn: 'Food & Drink',
        titleUr: 'کھانا اور پینا',
        duas: foodDuas),
    DuaCategory(
        id: 'adhan',
        titleEn: 'Adhan',
        titleUr: 'اذان',
        duas: adhanDuas),
    DuaCategory(
        id: 'salah',
        titleEn: 'Salah (Prayer)',
        titleUr: 'نماز',
        duas: salahDuas),
    DuaCategory(
        id: 'travel',
        titleEn: 'Travel',
        titleUr: 'سفر',
        duas: travelDuas),
    DuaCategory(
        id: 'market',
        titleEn: 'Market / Shopping',
        titleUr: 'بازار',
        duas: marketDuas),
    DuaCategory(
        id: 'greeting',
        titleEn: 'Greeting & Visiting',
        titleUr: 'ملاقات اور عیادت',
        duas: greetingDuas),
    DuaCategory(
        id: 'sneeze_yawn',
        titleEn: 'Sneezing & Yawning',
        titleUr: 'چھینک اور جمائی',
        duas: sneezeYawnDuas),
    DuaCategory(
        id: 'weather',
        titleEn: 'Weather',
        titleUr: 'موسم',
        duas: weatherDuas),
    DuaCategory(
        id: 'mirror',
        titleEn: 'Mirror',
        titleUr: 'آئینہ',
        duas: mirrorDuas),
    DuaCategory(
        id: 'sleeping',
        titleEn: 'Sleeping',
        titleUr: 'سونا',
        duas: sleepingDuas),
    DuaCategory(
        id: 'home_family',
        titleEn: 'Home & Family',
        titleUr: 'گھر اور خاندان',
        duas: homeFamilyDuas),
    DuaCategory(
        id: 'work_study',
        titleEn: 'Work & Study',
        titleUr: 'کام اور تعلیم',
        duas: workStudyDuas),
    DuaCategory(
        id: 'misc',
        titleEn: 'Daily Situations',
        titleUr: 'روزمرہ کے حالات',
        duas: miscDuas),
  ];

  static List<DuaEntity> allDuas = [
    ...wakingUpDuas,
    ...toiletDuas,
    ...wuduDuas,
    ...clothingDuas,
    ...homeDuas,
    ...foodDuas,
    ...adhanDuas,
    ...salahDuas,
    ...travelDuas,
    ...marketDuas,
    ...greetingDuas,
    ...sneezeYawnDuas,
    ...weatherDuas,
    ...mirrorDuas,
    ...morningDuas,
    ...sleepingDuas,
    ...homeFamilyDuas,
    ...workStudyDuas,
    ...miscDuas,
  ];
}