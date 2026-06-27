import '../../domain/entities/shifa_entity.dart';

class ShifaCategory {
  final String id;
  final String titleEn;
  final String titleUr;
  final List<ShifaEntity> duas;

  ShifaCategory({
    required this.id,
    required this.titleEn,
    required this.titleUr,
    required this.duas,
  });
}

class ShifaConstants {
  static List<ShifaEntity> physicalPain = [
    ShifaEntity(
      id: 'p1',
      titleEn: 'Pain in Body',
      titleUr: 'جسمانی درد کے لیے',
      arabic:
      'بِسْمِ اللَّهِ\nبِسْمِ اللَّهِ\nبِسْمِ اللَّهِ\nأَعُوذُ بِاللَّهِ وَقُدْرَتِهِ مِنْ شَرِّ مَا أَجِدُ وَأُحَاذِرُ',
      translationEn:
      'In the name of Allah (3 times), then: I seek refuge in Allah and His Power from the evil of what I find (pain) and what I fear.',
      translationUr:
      'بسم اللہ (3 مرتبہ)، پھر: میں اللہ اور اس کی قدرت کی پناہ مانگتا ہوں اس تکلیف کے شر سے جو مجھے ہو رہی ہے اور جس سے میں ڈرتا ہوں۔',
      instructionEn:
      'Place your right hand on the painful area. Say Bismillah 3 times, then recite this dua 7 times.',
      instructionUr:
      'دردناک جگہ پر سیدھا ہاتھ رکھیں۔ بسم اللہ 3 مرتبہ کہیں، پھر یہ دعا 7 مرتبہ پڑھیں۔',
      reference: 'Sahih Muslim: 2202, Tirmidhi: 2080',
      targetCount: 7,
    ),
    ShifaEntity(
      id: 'p2',
      titleEn: 'Ruqyah for Wound or Boil',
      titleUr: 'زخم اور پھوڑے کا روحانی علاج',
      arabic:
      'بِسْمِ اللَّهِ تُرْبَةُ أَرْضِنَا بِرِيقَةِ بَعْضِنَا يُشْفَى سَقِيمُنَا بِإِذْنِ رَبِّنَا',
      translationEn:
      'In the name of Allah, with the soil of our land and the saliva of some of us, our sick one is healed by the permission of our Lord.',
      translationUr:
      'اللہ کے نام سے، ہماری زمین کی مٹی اور ہم میں سے کسی کے تھوک کے ساتھ، ہمارا بیمار ہمارے رب کے حکم سے شفاء پائے۔',
      instructionEn:
      'Put index finger on ground (or clean soil), then apply lightly on the wound while reciting.',
      instructionUr:
      'شہادت کی انگلی زمین (یا پاک مٹی) پر رکھیں، پھر زخم پر ہلکا لگائیں اور پڑھیں۔',
      reference: 'Sahih al-Bukhari: 5745, Sahih Muslim: 2194',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 'p3',
      titleEn: 'Dua for Fever and Illness',
      titleUr: 'بخار اور بیماری کے لیے دعا',
      arabic:
      'اللَّهُمَّ رَبَّ النَّاسِ أَذْهِبِ الْبَأْسَ اشْفِ أَنْتَ الشَّافِي لَا شِفَاءَ إِلَّا شِفَاؤُكَ شِفَاءً لَا يُغَادِرُ سَقَمًا',
      translationEn:
      'O Allah, Lord of mankind, remove the suffering. Cure (him/her), for You are the Healer. There is no healing except Your healing, a healing that leaves no illness.',
      translationUr:
      'اے اللہ، لوگوں کے رب! تکلیف دور فرما۔ شفاء دے، کیونکہ تو ہی شفاء دینے والا ہے۔ تیری شفاء کے سوا کوئی شفاء نہیں، ایسی شفاء جو کوئی بیماری نہ چھوڑے۔',
      instructionEn:
      'Place right hand on the patient and recite while wiping over them.',
      instructionUr:
      'مریض پر سیدھا ہاتھ رکھیں اور پڑھتے ہوئے ہاتھ پھیریں۔',
      reference: 'Sahih al-Bukhari: 5750, Sahih Muslim: 2191',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 'p4',
      titleEn: 'Jibreel\'s Ruqyah for Any Harm',
      titleUr: 'جبریل علیہ السلام کی رقیہ',
      arabic:
      'بِسْمِ اللَّهِ أَرْقِيكَ مِنْ كُلِّ شَيْءٍ يُؤْذِيكَ مِنْ شَرِّ كُلِّ نَفْسٍ أَوْ عَيْنٍ حَاسِدٍ اللَّهُ يَشْفِيكَ بِسْمِ اللَّهِ أَرْقِيكَ',
      translationEn:
      'In the name of Allah I perform ruqyah for you, from everything that harms you, from the evil of every soul or envious eye. May Allah heal you; in the name of Allah I perform ruqyah for you.',
      translationUr:
      'اللہ کے نام سے میں تجھے دم کرتا ہوں، ہر اس چیز سے جو تجھے تکلیف دیتی ہے، ہر نفس یا حاسد نظر کے شر سے۔ اللہ تجھے شفاء دے، اللہ کے نام سے میں تجھے دم کرتا ہوں۔',
      instructionEn:
      'Jibril (AS) recited this upon the Prophet ﷺ. Recite and blow gently on the sick person.',
      instructionUr:
      'جبریل علیہ السلام نے یہ نبی ﷺ پر پڑھی تھی۔ پڑھ کر مریض پر دم کریں۔',
      reference: 'Sahih Muslim: 2186',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'p5',
      titleEn: 'Dua for Headache or Any Localised Pain',
      titleUr: 'سر درد یا کسی مخصوص جگہ کے درد کے لیے',
      arabic:
      'أَعُوذُ بِعِزَّةِ اللَّهِ وَقُدْرَتِهِ مِنْ شَرِّ مَا أَجِدُ وَأُحَاذِرُ',
      translationEn:
      'I seek refuge in the might of Allah and His power from the evil of what I feel and what I fear.',
      translationUr:
      'میں اللہ کی عزت اور اس کی قدرت کی پناہ مانگتا ہوں ہر اس شر سے جو مجھے ہو رہا ہے اور جس سے میں ڈرتا ہوں۔',
      instructionEn: 'Place hand on the painful area and recite 7 times.',
      instructionUr: 'دردناک جگہ پر ہاتھ رکھ کر 7 مرتبہ پڑھیں۔',
      reference: 'Sahih Muslim: 2202',
      targetCount: 7,
    ),
    ShifaEntity(
      id: 'p6',
      titleEn: 'Surah Al-Fatihah as Ruqyah',
      titleUr: 'سورۃ الفاتحہ بطور رقیہ',
      arabic:
      'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ\nالرَّحْمَنِ الرَّحِيمِ\nمَالِكِ يَوْمِ الدِّينِ\nإِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ\nاهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ\nصِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ',
      translationEn:
      'All praise is for Allah, Lord of all worlds, the Most Gracious, the Most Merciful, Master of the Day of Judgement. You alone we worship and You alone we ask for help. Guide us to the straight path — the path of those You have blessed, not of those who have earned anger, nor of those who are astray.',
      translationUr:
      'تمام تعریفیں اللہ کے لیے ہیں جو تمام جہانوں کا رب ہے، بڑا مہربان، نہایت رحم والا، روزِ جزا کا مالک۔ ہم صرف تیری عبادت کرتے ہیں اور صرف تجھ سے مدد مانگتے ہیں۔ ہمیں سیدھی راہ دکھا، ان لوگوں کی راہ جن پر تو نے انعام فرمایا، نہ ان کی جن پر غضب ہوا اور نہ گمراہوں کی۔',
      instructionEn:
      'A companion recited Surah Al-Fatihah on a scorpion-stung man and he was cured. Recite and blow on the patient or the painful area.',
      instructionUr:
      'ایک صحابی نے بچھو کے کاٹے ہوئے شخص پر سورۃ الفاتحہ پڑھی تو وہ ٹھیک ہو گیا۔ مریض یا دردناک جگہ پر پڑھ کر دم کریں۔',
      reference: 'Sahih al-Bukhari: 5736, Sahih Muslim: 2201',
      targetCount: 7,
    ),
    ShifaEntity(
      id: 'p7',
      titleEn: 'Ayatul Kursi for Protection and Healing',
      titleUr: 'آیت الکرسی بطور رقیہ',
      arabic:
      'اللَّهُ لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ لَهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ مَنْ ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلَّا بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلَا يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلَّا بِمَا شَاءَ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ وَلَا يَئُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ',
      translationEn:
      'Allah — there is no deity except Him, the Ever-Living, the Sustainer of existence. Neither drowsiness overtakes Him nor sleep. To Him belongs whatever is in the heavens and whatever is on the earth. Who is it that can intercede with Him except by His permission? He knows what is before them and what will be after them, and they encompass not a thing of His knowledge except for what He wills. His Kursi extends over the heavens and the earth, and their preservation tires Him not. And He is the Most High, the Most Great.',
      translationUr:
      'اللہ — اس کے سوا کوئی معبود نہیں، ہمیشہ زندہ، سب کو سنبھالنے والا۔ اسے نہ اونگھ آتی ہے نہ نیند۔ آسمانوں اور زمین میں جو کچھ ہے سب اسی کا ہے۔ کون ہے جو اس کی اجازت کے بغیر اس کے یہاں سفارش کر سکے؟ جو کچھ ان کے سامنے ہے اور جو ان کے پیچھے ہے وہ سب جانتا ہے۔ اور وہ اس کے علم میں سے کسی چیز کا احاطہ نہیں کر سکتے مگر جتنا وہ چاہے۔ اس کی کرسی آسمانوں اور زمین کو گھیرے ہوئے ہے اور ان کی حفاظت اسے تھکاتی نہیں، اور وہ بہت بلند، بہت بڑا ہے۔',
      instructionEn:
      'Recite and blow on hands, then wipe over the entire body. Also recite on water and give to the patient to drink.',
      instructionUr:
      'پڑھ کر ہاتھوں پر دم کریں، پھر پورے جسم پر پھیریں۔ پانی پر بھی پڑھ کر مریض کو پلائیں۔',
      reference: 'Quran 2:255; Sahih al-Bukhari: 5010',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'p8',
      titleEn: 'Surah Al-Ikhlas, Al-Falaq and An-Nas (Three Quls)',
      titleUr: 'تین قل (سورۃ اخلاص، فلق، ناس)',
      arabic:
      'قُلْ هُوَ اللَّهُ أَحَدٌ ۞ اللَّهُ الصَّمَدُ ۞ لَمْ يَلِدْ وَلَمْ يُولَدْ ۞ وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَدٌ\n\nقُلْ أَعُوذُ بِرَبِّ الْفَلَقِ ۞ مِنْ شَرِّ مَا خَلَقَ ۞ وَمِنْ شَرِّ غَاسِقٍ إِذَا وَقَبَ ۞ وَمِنْ شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ ۞ وَمِنْ شَرِّ حَاسِدٍ إِذَا حَسَدَ\n\nقُلْ أَعُوذُ بِرَبِّ النَّاسِ ۞ مَلِكِ النَّاسِ ۞ إِلَهِ النَّاسِ ۞ مِنْ شَرِّ الْوَسْوَاسِ الْخَنَّاسِ ۞ الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ ۞ مِنَ الْجِنَّةِ وَالنَّاسِ',
      translationEn:
      'Say: He is Allah, the One. Allah, the Eternal Refuge. He neither begets nor is born, nor is there to Him any equivalent.\n\nSay: I seek refuge in the Lord of daybreak — from the evil of what He has created, from the evil of darkness when it settles, from the evil of those who blow on knots, from the evil of an envier when he envies.\n\nSay: I seek refuge in the Lord of mankind, the Sovereign of mankind, the God of mankind — from the evil of the retreating whisperer, who whispers into the chests of mankind — from among jinn and mankind.',
      translationUr:
      'کہو: وہ اللہ ایک ہے، اللہ بے نیاز ہے، نہ اس نے کسی کو جنا، نہ وہ جنا گیا، اور نہ اس کا کوئی ہمسر ہے۔\n\nکہو: میں صبح کے رب کی پناہ مانگتا ہوں، اس کی مخلوق کے شر سے، اندھیرے کے شر سے جب وہ چھا جائے، گانٹھوں میں پھونکنے والیوں کے شر سے، اور حسد کرنے والے کے شر سے جب وہ حسد کرے۔\n\nکہو: میں لوگوں کے رب کی پناہ مانگتا ہوں، لوگوں کے بادشاہ کی، لوگوں کے معبود کی — وسوسہ ڈالنے والے پیچھے ہٹنے والے کے شر سے، جو لوگوں کے سینوں میں وسوسہ ڈالتا ہے — جنوں میں سے اور انسانوں میں سے۔',
      instructionEn:
      'The Prophet ﷺ would recite these three surahs, blow into his palms and wipe over his entire body during illness. Repeat 3 times each.',
      instructionUr:
      'نبی ﷺ بیماری میں یہ تینوں سورتیں پڑھ کر ہتھیلیوں پر دم کرتے اور پورے جسم پر پھیرتے تھے۔ ہر سورت 3 مرتبہ پڑھیں۔',
      reference: 'Sahih al-Bukhari: 5748, Sahih Muslim: 2192',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'p9',
      titleEn: 'Dua for Fever (Cooling It)',
      titleUr: 'بخار ٹھنڈا کرنے کی دعا',
      arabic:
      'بِسْمِ اللَّهِ الْكَبِيرِ أَعُوذُ بِاللَّهِ الْعَظِيمِ مِنْ شَرِّ كُلِّ عِرْقٍ نَعَّارٍ وَمِنْ شَرِّ حَرِّ النَّارِ',
      translationEn:
      'In the name of Allah, the Great. I seek refuge in Allah, the Magnificent, from the evil of every pulsing vein and from the evil of the heat of the fire.',
      translationUr:
      'اللہ کے بڑے نام سے۔ میں اللہ عظیم کی پناہ مانگتا ہوں ہر دھڑکتی رگ کے شر سے اور آگ کی گرمی کے شر سے۔',
      instructionEn:
      'Place hand on the forehead or affected area and recite. The Prophet ﷺ instructed this for fever.',
      instructionUr:
      'ماتھے یا متاثرہ جگہ پر ہاتھ رکھ کر پڑھیں۔ نبی ﷺ نے بخار میں یہ پڑھنے کا حکم دیا۔',
      reference: 'Tirmidhi: 2075, graded Hasan by Tirmidhi',
      targetCount: 7,
    ),
    ShifaEntity(
      id: 'p10',
      titleEn: 'Dua for the Sick Person (Said by Visitor)',
      titleUr: 'عیادت کرنے والا مریض کے لیے یہ کہے',
      arabic:
      'لَا بَأْسَ طَهُورٌ إِنْ شَاءَ اللَّهُ',
      translationEn:
      'Do not worry, it will be a purification, if Allah wills.',
      translationUr:
      'کوئی فکر نہ کرو، یہ (بیماری) پاکیزگی کا ذریعہ بنے گی، ان شاء اللہ۔',
      instructionEn:
      'Recite this when visiting a sick person. The Prophet ﷺ said this to those who were ill.',
      instructionUr:
      'بیمار کی عیادت کے وقت یہ کہیں۔ نبی ﷺ بیماروں سے یہ فرماتے تھے۔',
      reference: 'Sahih al-Bukhari: 3616, Abu Dawud: 3092',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 'p11',
      titleEn: 'Wiping Dua (Recited by Oneself During Illness)',
      titleUr: 'خود بیماری میں پڑھنے کی دعا',
      arabic:
      'اللَّهُمَّ اشْفِنِي',
      translationEn: 'O Allah, cure me.',
      translationUr: 'اے اللہ! مجھے شفاء دے۔',
      instructionEn:
      'Recite while wiping hands over the painful area of the body.',
      instructionUr:
      'ہاتھوں کو جسم کے دردناک حصے پر پھیرتے ہوئے پڑھیں۔',
      reference: 'Sahih al-Bukhari: 5743 (derived from the wiping practice of the Prophet ﷺ)',
      targetCount: 7,
    ),
    ShifaEntity(
      id: 'p12',
      titleEn: 'Surah Al-Baqarah Last Two Verses for Protection',
      titleUr: 'سورۃ البقرہ کی آخری دو آیات',
      arabic:
      'آمَنَ الرَّسُولُ بِمَا أُنزِلَ إِلَيْهِ مِن رَّبِّهِ وَالْمُؤْمِنُونَ كُلٌّ آمَنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِّن رُّسُلِهِ وَقَالُوا سَمِعْنَا وَأَطَعْنَا غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ ۞ لَا يُكَلِّفُ اللَّهُ نَفْسًا إِلَّا وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ رَبَّنَا لَا تُؤَاخِذْنَا إِن نَّسِينَا أَوْ أَخْطَأْنَا رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِن قَبْلِنَا رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنتَ مَوْلَانَا فَانصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ',
      translationEn:
      'The Messenger has believed in what was revealed to him from his Lord, and so have the believers. All of them have believed in Allah, His angels, His books, and His messengers, (saying), "We make no distinction between any of His messengers." And they say, "We hear and we obey. (We seek) Your forgiveness, our Lord, and to You is the (final) destination." Allah does not burden a soul beyond what it can bear. It will have (the consequence of) what (good) it has gained, and it will bear (the consequence of) what (evil) it has earned. "Our Lord, do not impose blame upon us if we forget or make error. Our Lord, and lay not upon us a burden like that which You laid upon those before us. Our Lord, and burden us not with that which we have no ability to bear. And pardon us; and forgive us; and have mercy upon us. You are our protector, so give us victory over the disbelieving people."',
      translationUr:
      'رسول ایمان لائے اس پر جو ان کے رب کی طرف سے ان پر نازل ہوا اور مومن بھی۔ سب اللہ پر، اس کے فرشتوں پر، اس کی کتابوں پر اور اس کے رسولوں پر ایمان لائے۔ ہم اس کے رسولوں میں سے کسی میں فرق نہیں کرتے۔ اور انہوں نے کہا: ہم نے سنا اور مانا، اے ہمارے رب تیری بخشش ہو، اور تیری ہی طرف لوٹنا ہے۔ اللہ کسی نفس پر اس کی طاقت سے زیادہ بوجھ نہیں ڈالتا۔ اسے وہی ملے گا جو اس نے کمایا، اور اسی کے ذمے ہوگا جو اس نے کیا۔ اے ہمارے رب! اگر ہم بھول جائیں یا غلطی کریں تو ہم سے مواخذہ نہ کر۔ اے ہمارے رب! ہم پر وہ بوجھ نہ ڈال جو تو نے ہم سے پہلوں پر ڈالا تھا۔ اے ہمارے رب! ہم سے وہ بوجھ نہ اٹھوا جو ہم میں طاقت نہیں۔ اور ہمیں معاف کر، ہمیں بخش دے، ہم پر رحم فرما، تو ہی ہمارا مولا ہے، کافر قوم کے خلاف ہماری مدد فرما۔',
      instructionEn:
      'The Prophet ﷺ said: "Whoever recites the last two verses of Surah Al-Baqarah at night, they will suffice him." Recite before sleep or during illness for protection.',
      instructionUr:
      'نبی ﷺ نے فرمایا: جو شخص رات کو سورۃ البقرہ کی آخری دو آیات پڑھے وہ اسے کافی ہو جائیں گی۔ رات کو سونے سے پہلے یا بیماری میں پڑھیں۔',
      reference: 'Sahih al-Bukhari: 5009, Sahih Muslim: 808 (Quran 2:285-286)',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 'p13',
      titleEn: 'Dua for the Sick (7-Times Dua)',
      titleUr: 'مریض کے لیے 7 مرتبہ کی دعا',
      arabic:
      'أَسْأَلُ اللَّهَ الْعَظِيمَ رَبَّ الْعَرْشِ الْعَظِيمِ أَنْ يَشْفِيَكَ',
      translationEn:
      'I ask Allah, the Mighty, Lord of the Mighty Throne, to cure you.',
      translationUr:
      'میں اللہ عظیم سے، جو عرشِ عظیم کا رب ہے، درخواست کرتا ہوں کہ وہ تجھے شفاء دے۔',
      instructionEn:
      'The Prophet ﷺ said: whoever visits a sick person who is not at the point of death and recites this 7 times, Allah will cure him of that illness.',
      instructionUr:
      'نبی ﷺ نے فرمایا: جو کوئی کسی بیمار کی عیادت کرے جو موت کے قریب نہ ہو اور یہ 7 مرتبہ پڑھے، اللہ اسے اس بیماری سے شفاء دے گا۔',
      reference: 'Abu Dawud: 3106, Tirmidhi: 2083 – graded Sahih by Ibn Hibban: 2976',
      targetCount: 7,
    ),
    ShifaEntity(
      id: 'p14',
      titleEn: 'Dua for Eye Pain',
      titleUr: 'آنکھ کی تکلیف کے لیے دعا',
      arabic:
      'أَذْهِبِ الْبَأْسَ رَبَّ النَّاسِ وَاشْفِ أَنْتَ الشَّافِي لَا شِفَاءَ إِلَّا شِفَاؤُكَ شِفَاءً لَا يُغَادِرُ سَقَمًا',
      translationEn:
      'Remove the suffering, O Lord of mankind, and cure (him/her); You are the Healer. There is no healing except Your healing, a healing that leaves no illness.',
      translationUr:
      'تکلیف دور فرما، اے لوگوں کے رب! اور شفاء دے، تو ہی شفاء دینے والا ہے، تیری شفاء کے سوا کوئی شفاء نہیں، ایسی شفاء جو کوئی بیماری نہ چھوڑے۔',
      instructionEn:
      'Place right hand gently near the eye (without touching) and recite. This dua is from the Prophetic tradition of wiping and reciting.',
      instructionUr:
      'سیدھا ہاتھ آنکھ کے قریب (بغیر چھوئے) رکھ کر پڑھیں۔',
      reference: 'Sahih al-Bukhari: 5743, Sahih Muslim: 2191',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'p15',
      titleEn: 'Dua for Stomach Pain',
      titleUr: 'پیٹ کے درد کے لیے دعا',
      arabic:
      'ضَعْ يَدَكَ عَلَى الَّذِي تَأَلَّمَ مِنْ جَسَدِكَ وَقُلْ بِسْمِ اللَّهِ ثَلَاثاً وَقُلْ سَبْعَ مَرَّاتٍ أَعُوذُ بِاللَّهِ وَقُدْرَتِهِ مِنْ شَرِّ مَا أَجِدُ وَأُحَاذِرُ',
      translationEn:
      'Place your hand on the area of your body that hurts and say Bismillah three times; then say seven times: I seek refuge in Allah and His Power from the evil of what I find and what I fear.',
      translationUr:
      'جسم کے جس حصے میں تکلیف ہو اس پر ہاتھ رکھیں اور بسم اللہ 3 مرتبہ کہیں، پھر 7 مرتبہ کہیں: میں اللہ اور اس کی قدرت کی پناہ مانگتا ہوں ہر اس تکلیف کے شر سے جو مجھے ہو رہی ہے اور جس سے میں ڈرتا ہوں۔',
      instructionEn:
      'This is the complete Prophetic method for any bodily pain. Place right hand on the stomach or affected area.',
      instructionUr:
      'یہ کسی بھی جسمانی درد کا مکمل نبوی طریقہ ہے۔ پیٹ یا متاثرہ جگہ پر سیدھا ہاتھ رکھیں۔',
      reference: 'Sahih Muslim: 2202',
      targetCount: 7,
    ),
    ShifaEntity(
      id: 'p16',
      titleEn: 'Dua for Toothache or Jaw Pain',
      titleUr: 'دانت یا جبڑے کے درد کے لیے',
      arabic:
      'بِسْمِ اللَّهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الْأَرْضِ وَلَا فِي السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ',
      translationEn:
      'In the name of Allah, with Whose name nothing on earth or in heaven can cause harm, and He is the All-Hearing, All-Knowing.',
      translationUr:
      'اللہ کے نام سے جس کے نام کے ساتھ زمین یا آسمان میں کوئی چیز نقصان نہیں دے سکتی، اور وہ سننے والا، جاننے والا ہے۔',
      instructionEn:
      'The Prophet ﷺ said: whoever recites this 3 times in the morning and 3 times in the evening, nothing will harm him. Recite and place hand on the affected area.',
      instructionUr:
      'نبی ﷺ نے فرمایا: جو صبح 3 مرتبہ اور شام 3 مرتبہ پڑھے، اسے کوئی چیز نقصان نہیں دے گی۔ پڑھ کر متاثرہ جگہ پر ہاتھ رکھیں۔',
      reference: 'Abu Dawud: 5088, Tirmidhi: 3388 – graded Sahih',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'p17',
      titleEn: 'Dua for Back or Joint Pain',
      titleUr: 'کمر یا جوڑوں کے درد کے لیے',
      arabic:
      'رَبِّ إِنِّي مَسَّنِيَ الضُّرُّ وَأَنتَ أَرْحَمُ الرَّاحِمِينَ',
      translationEn:
      'My Lord, indeed adversity has touched me, and You are the Most Merciful of the merciful.',
      translationUr:
      'اے میرے رب! مجھے تکلیف پہنچی ہے اور تو تمام رحم کرنے والوں سے زیادہ رحم کرنے والا ہے۔',
      instructionEn:
      'This is the dua of Prophet Ayyub (AS) when he was afflicted with physical suffering for years. Allah responded and cured him completely.',
      instructionUr:
      'یہ حضرت ایوب علیہ السلام کی دعا ہے جو انہوں نے سالوں کی جسمانی تکلیف میں پڑھی۔ اللہ نے انہیں مکمل شفاء عطا فرمائی۔',
      reference: 'Quran 21:83; Sahih narration confirmed by Ibn Kathir and Tafsir al-Tabari',
      targetCount: 7,
    ),
    ShifaEntity(
      id: 'p18',
      titleEn: 'Dua for Chest Pain or Breathing Difficulty',
      titleUr: 'سینے کے درد یا سانس کی تکلیف کے لیے',
      arabic:
      'رَبِّ اشْرَحْ لِي صَدْرِي وَيَسِّرْ لِي أَمْرِي',
      translationEn:
      'My Lord, expand for me my chest (with ease and relief) and ease my matter for me.',
      translationUr:
      'اے میرے رب! میرا سینہ کھول دے اور میرا معاملہ آسان کر دے۔',
      instructionEn:
      'The dua of Musa (AS). Place hand on the chest and recite sincerely, asking Allah for physical and spiritual relief.',
      instructionUr:
      'یہ موسیٰ علیہ السلام کی دعا ہے۔ سینے پر ہاتھ رکھ کر پڑھیں اور اللہ سے جسمانی اور روحانی سکون مانگیں۔',
      reference: 'Quran 20:25-26; Used in Prophetic Ruqyah tradition',
      targetCount: 7,
    ),
    ShifaEntity(
      id: 'p19',
      titleEn: 'Dua When a Wound or Injury is Bleeding',
      titleUr: 'زخم سے خون بہنے پر',
      arabic:
      'أَذْهِبِ الْبَأْسَ رَبَّ النَّاسِ بِيَدِكَ الشِّفَاءُ لَا كَاشِفَ لَهُ إِلَّا أَنْتَ',
      translationEn:
      'Remove the difficulty, O Lord of mankind. In Your Hand is the cure; none can lift it except You.',
      translationUr:
      'تکلیف دور فرما، اے لوگوں کے رب! شفاء تیرے ہی ہاتھ میں ہے، تیرے سوا اسے دور کرنے والا کوئی نہیں۔',
      instructionEn:
      'Apply gentle pressure to the wound, recite this dua and blow on the area. Seek medical help alongside this dua.',
      instructionUr:
      'زخم پر ہلکا دباؤ ڈالیں، یہ دعا پڑھیں اور دم کریں۔ ساتھ ساتھ طبی مدد بھی لیں۔',
      reference: 'Sahih al-Bukhari: 5743, Sahih Muslim: 2191 (extracted from the Prophetic healing dua tradition)',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'p20',
      titleEn: 'Complete Ruqyah Session (Surah Al-Kafirun + Ikhlas + Falaq + Nas)',
      titleUr: 'مکمل رقیہ سیشن',
      arabic:
      'قُلْ يَا أَيُّهَا الْكَافِرُونَ ۞ لَا أَعْبُدُ مَا تَعْبُدُونَ ۞ وَلَا أَنتُمْ عَابِدُونَ مَا أَعْبُدُ ۞ وَلَا أَنَا عَابِدٌ مَّا عَبَدتُّمْ ۞ وَلَا أَنتُمْ عَابِدُونَ مَا أَعْبُدُ ۞ لَكُمْ دِينُكُمْ وَلِيَ دِينِ',
      translationEn:
      'Say: O disbelievers, I do not worship what you worship. Nor are you worshippers of what I worship. Nor will I be a worshipper of what you worship. Nor will you be worshippers of what I worship. For you is your religion, and for me is my religion.',
      translationUr:
      'کہو: اے کافرو! میں اس کی عبادت نہیں کرتا جس کی تم کرتے ہو، اور نہ تم اس کی عبادت کرنے والے ہو جس کی میں کرتا ہوں، اور نہ میں اس کی عبادت کرنے والا ہوں جس کی تم نے عبادت کی، اور نہ تم اس کی عبادت کرنے والے ہو جس کی میں عبادت کرتا ہوں۔ تمہارے لیے تمہارا دین ہے اور میرے لیے میرا دین۔',
      instructionEn:
      'The Prophet ﷺ would recite Surah Al-Kafirun, then the three Quls (Ikhlas, Falaq, Nas), blow into hands and wipe the whole body from head to toe — especially when ill. Repeat the three Quls 3 times each.',
      instructionUr:
      'نبی ﷺ سورۃ الکافرون پھر تین قل (اخلاص، فلق، ناس) پڑھ کر ہاتھوں پر دم کرتے اور سر سے پاؤں تک پورے جسم پر پھیرتے — خاص طور پر بیماری میں۔ تین قل 3، 3 مرتبہ پڑھیں۔',
      reference: 'Sahih al-Bukhari: 5748, Sahih Muslim: 2192, Abu Dawud: 5056',
      targetCount: 3,
    ),
  ];

  // ═══════════════════════════════════════════════════════════
  // 2. EVIL EYE & MAGIC — نظرِ بد اور جادو
  // ═══════════════════════════════════════════════════════════
  static List<ShifaEntity> evilEye = [
    ShifaEntity(
      id: 'e1',
      titleEn: 'Protection from Evil Eye',
      titleUr: 'نظرِ بد سے حفاظت',
      arabic: 'أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّةِ مِنْ كُلِّ شَيْطَانٍ وَهَامَّةٍ وَمِنْ كُلِّ عَيْنٍ لَامَّةٍ',
      translationEn: 'I seek refuge in the perfect words of Allah from every devil and poisonous creature, and from every evil eye.',
      translationUr: 'میں اللہ کے کامل کلمات کی پناہ مانگتا ہوں ہر شیطان، زہریلے جانور اور ہر لگ جانے والی نظرِ بد سے۔',
      instructionEn: 'Recite for protection from evil eye and blow on the person.',
      instructionUr: 'نظرِ بد سے حفاظت کے لیے پڑھ کر شخص پر دم کریں۔',
      reference: 'Sahih al-Bukhari 3371',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'e2',
      titleEn: 'Ruqyah Against Evil Eye (Jibreel\'s Dua)',
      titleUr: 'نظرِ بد کی رقیہ',
      arabic: 'بِسْمِ اللَّهِ أَرْقِيكَ مِنْ كُلِّ شَيْءٍ يُؤْذِيكَ مِنْ شَرِّ كُلِّ نَفْسٍ أَوْ عَيْنٍ حَاسِدٍ اللَّهُ يَشْفِيكَ بِسْمِ اللَّهِ أَرْقِيكَ',
      translationEn: 'In the name of Allah I perform ruqyah for you, from everything that harms you, from the evil of every soul or envious eye. May Allah heal you; in the name of Allah I perform ruqyah for you.',
      translationUr: 'اللہ کے نام سے میں تجھے دم کرتا ہوں ہر تکلیف دینے والی چیز سے، ہر نفس یا حاسد آنکھ کے شر سے۔ اللہ تجھے شفا دے، اللہ کے نام سے میں تجھے دم کرتا ہوں۔',
      instructionEn: 'Recite and blow on the affected person.',
      instructionUr: 'متاثرہ شخص پر پڑھ کر دم کریں۔',
      reference: 'Sahih Muslim 2186',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'e3',
      titleEn: 'Surah Al-Falaq',
      titleUr: 'سورۃ الفلق',
      arabic: 'قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ ﴿١﴾ مِنْ شَرِّ مَا خَلَقَ ﴿٢﴾ وَمِنْ شَرِّ غَاسِقٍ إِذَا وَقَبَ ﴿٣﴾ وَمِنْ شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ ﴿٤﴾ وَمِنْ شَرِّ حَاسِدٍ إِذَا حَسَدَ ﴿٥﴾',
      translationEn: 'Say: I seek refuge in the Lord of daybreak...',
      translationUr: 'کہو: میں پناہ مانگتا ہوں صبح کے رب کی...',
      instructionEn: 'Recite in ruqyah and before sleeping.',
      instructionUr: 'رقیہ میں اور سونے سے پہلے پڑھیں۔',
      reference: 'Qur’an 113; Sahih al-Bukhari 5748; Sahih Muslim 2192',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'e4',
      titleEn: 'Surah An-Nas',
      titleUr: 'سورۃ الناس',
      arabic: 'قُلْ أَعُوذُ بِرَبِّ النَّاسِ ﴿١﴾ مَلِكِ النَّاسِ ﴿٢﴾ إِلَٰهِ النَّاسِ ﴿٣﴾ مِنْ شَرِّ الْوَسْوَاسِ الْخَنَّاسِ ﴿٤﴾ الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ ﴿٥﴾ مِنَ الْجِنَّةِ وَالنَّاسِ ﴿٦﴾',
      translationEn: 'Say: I seek refuge in the Lord of mankind...',
      translationUr: 'کہو: میں پناہ مانگتا ہوں لوگوں کے رب کی...',
      instructionEn: 'Recite in ruqyah and before sleeping.',
      instructionUr: 'رقیہ میں اور سونے سے پہلے پڑھیں۔',
      reference: 'Qur’an 114; Sahih al-Bukhari 5748; Sahih Muslim 2192',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'e5',
      titleEn: 'Ayatul Kursi',
      titleUr: 'آیۃ الکرسی',
      arabic: 'اللَّهُ لَا إِلَٰهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ ... وَهُوَ الْعَلِيُّ الْعَظِيمُ',
      translationEn: 'Allah — there is no deity except Him, the Ever-Living, the Sustainer of all existence...',
      translationUr: 'اللہ — اس کے سوا کوئی معبود نہیں، وہ ہمیشہ زندہ ہے...',
      instructionEn: 'Recite before sleeping for protection.',
      instructionUr: 'حفاظت کے لیے سونے سے پہلے پڑھیں۔',
      reference: 'Sahih al-Bukhari 2311',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 'e6',
      titleEn: 'Last Two Verses of Surah Al-Baqarah',
      titleUr: 'سورۃ البقرۃ کی آخری دو آیات',
      arabic: 'آمَنَ الرَّسُولُ بِمَا أُنْزِلَ إِلَيْهِ مِنْ رَبِّهِ ... وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا',
      translationEn: 'The Messenger has believed in what was revealed to him from his Lord...',
      translationUr: 'رسول ایمان لائے اس پر جو ان کے رب کی طرف سے نازل ہوا...',
      instructionEn: 'Recite at night before sleeping.',
      instructionUr: 'رات کو سونے سے پہلے پڑھیں۔',
      reference: 'Sahih al-Bukhari 5009; Sahih Muslim 808',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 'e7',
      titleEn: 'Seek Refuge from the Evil of Creation',
      titleUr: 'مخلوق کے شر سے پناہ',
      arabic: 'أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ',
      translationEn: 'I seek refuge in the perfect words of Allah from the evil of what He has created.',
      translationUr: 'میں اللہ کے کامل کلمات کی پناہ مانگتا ہوں ہر اس چیز کے شر سے جو اس نے پیدا کی ہے۔',
      instructionEn: 'Recite when arriving at a place.',
      instructionUr: 'کسی جگہ پہنچ کر پڑھیں۔',
      reference: 'Sahih Muslim 2708',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'e8',
      titleEn: 'The Evil Eye is Real',
      titleUr: 'نظرِ بد حق ہے',
      arabic: 'الْعَيْنُ حَقٌّ',
      translationEn: 'The evil eye is a fact.',
      translationUr: 'نظرِ بد حق ہے۔',
      instructionEn: 'A statement affirming the reality of evil eye.',
      instructionUr: 'نظرِ بد کی حقیقت کو ثابت کرنے والی حدیث۔',
      reference: 'Sahih al-Bukhari 5740',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 'e9',
      titleEn: 'Treat Her With Ruqyah',
      titleUr: 'اس کے لیے دم کرو',
      arabic: 'اسْتَرْقُوا لَهَا فَإِنَّ بِهَا النَّظْرَةَ',
      translationEn: 'Treat her with ruqyah, for she is under the effect of the evil eye.',
      translationUr: 'اس کے لیے دم کرو، کیونکہ اسے نظر لگ گئی ہے۔',
      instructionEn: 'Use ruqyah for one afflicted by evil eye.',
      instructionUr: 'جسے نظر لگ جائے اس پر رقیہ کریں۔',
      reference: 'Sahih al-Bukhari 5739',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 'e10',
      titleEn: 'Ruqyah for the Sick with Mu\'awwidhatayn',
      titleUr: 'معوذتین سے رقیہ',
      arabic: 'قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ ... قُلْ أَعُوذُ بِرَبِّ النَّاسِ ...',
      translationEn: 'The Prophet ﷺ used to recite the Mu\'awwidhatayn and blow over the sick.',
      translationUr: 'نبی ﷺ معوذتین پڑھ کر بیمار پر دم کرتے تھے۔',
      instructionEn: 'Recite and blow over the sick person.',
      instructionUr: 'پڑھ کر بیمار پر دم کریں۔',
      reference: 'Sahih al-Bukhari 5735; Sahih Muslim 2192',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'e11',
      titleEn: 'Ruqyah for Pain',
      titleUr: 'درد کے لیے رقیہ',
      arabic: 'بِاسْمِ اللَّهِ',
      translationEn: 'In the name of Allah.',
      translationUr: 'اللہ کے نام سے۔',
      instructionEn: 'Say three times over the place of pain, then recite the supplication seven times.',
      instructionUr: 'درد کی جگہ پر 3 بار کہیں، پھر دعا 7 بار پڑھیں۔',
      reference: 'Sahih Muslim 2202',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'e12',
      titleEn: 'Pain Relief Supplication',
      titleUr: 'درد دور کرنے کی دعا',
      arabic: 'أَعُوذُ بِاللَّهِ وَقُدْرَتِهِ مِنْ شَرِّ مَا أَجِدُ وَأُحَاذِرُ',
      translationEn: 'I seek refuge with Allah and His power from the evil of what I feel and fear.',
      translationUr: 'میں اللہ اور اس کی قدرت کی پناہ مانگتا ہوں اس شر سے جو میں محسوس کرتا ہوں اور جس سے ڈرتا ہوں۔',
      instructionEn: 'Recite seven times after saying Bismillah three times.',
      instructionUr: 'بسم اللہ 3 بار کہہ کر یہ دعا 7 بار پڑھیں۔',
      reference: 'Sahih Muslim 2202',
      targetCount: 7,
    ),
    ShifaEntity(
      id: 'e13',
      titleEn: 'Mu\'awwidhat for Recovery',
      titleUr: 'شفا کے لیے معوذات',
      arabic: 'قُلْ هُوَ اللَّهُ أَحَدٌ ... قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ ... قُلْ أَعُوذُ بِرَبِّ النَّاسِ ...',
      translationEn: 'He used to recite the Mu\'awwidhat when ill and blow over himself.',
      translationUr: 'آپ ﷺ بیماری میں معوذات پڑھ کر اپنے اوپر دم کرتے تھے۔',
      instructionEn: 'Recite for healing and protection.',
      instructionUr: 'شفا اور حفاظت کے لیے پڑھیں۔',
      reference: 'Sahih al-Bukhari 5735',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'e14',
      titleEn: 'Ruqyah for Evil Eye, Stings, and Pustules',
      titleUr: 'نظرِ بد، ڈنک اور پھوڑوں کے لیے رقیہ',
      arabic: 'الرُّقْيَةُ مِنَ الْعَيْنِ وَالْحُمَةِ وَالنُّشْرَةِ',
      translationEn: 'Ruqyah is prescribed for the evil eye, stings, and similar harms.',
      translationUr: 'نظرِ بد، ڈنک اور ایسی تکلیفوں کے لیے رقیہ جائز ہے۔',
      instructionEn: 'Use authentic ruqyah with Qur’an and du’as.',
      instructionUr: 'قرآن اور مسنون دعاؤں سے رقیہ کریں۔',
      reference: 'Sahih Muslim 2197 / Chapter 21',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 'e15',
      titleEn: 'Ruqyah With the Qur’an',
      titleUr: 'قرآن کے ساتھ رقیہ',
      arabic: 'إِنَّ الرُّقَى مَا لَمْ تَكُنْ شِرْكًا',
      translationEn: 'There is no harm in ruqyah so long as it does not involve shirk.',
      translationUr: 'رقیہ میں کوئی حرج نہیں جب تک اس میں شرک نہ ہو۔',
      instructionEn: 'Ruqyah should be free from shirk and based on Qur’an and Sunnah.',
      instructionUr: 'رقیہ شرک سے پاک اور قرآن و سنت پر مبنی ہونا چاہیے۔',
      reference: 'Sahih Muslim 2200',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 'e16',
      titleEn: 'Saying Bismillah Before Sleeping',
      titleUr: 'سونے سے پہلے بسم اللہ',
      arabic: 'بِاسْمِكَ اللَّهُمَّ أَمُوتُ وَأَحْيَا',
      translationEn: 'In Your name, O Allah, I die and I live.',
      translationUr: 'اے اللہ! تیرے ہی نام سے میں مرتا ہوں اور جیتا ہوں۔',
      instructionEn: 'Recite before sleeping for protection.',
      instructionUr: 'حفاظت کے لیے سونے سے پہلے پڑھیں۔',
      reference: 'Sahih al-Bukhari 6312',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 'e17',
      titleEn: 'Morning Gratitude After Waking',
      titleUr: 'جاگنے کے بعد حمد',
      arabic: 'الْحَمْدُ لِلَّهِ الَّذِي أَحْيَانَا بَعْدَ مَا أَمَاتَنَا وَإِلَيْهِ النُّشُورُ',
      translationEn: 'All praise is for Allah who gave us life after causing us to die, and to Him is the resurrection.',
      translationUr: 'سب تعریف اللہ کے لیے ہے جس نے ہمیں موت کے بعد زندگی دی، اور اسی کی طرف لوٹ کر جانا ہے۔',
      instructionEn: 'Say when waking up.',
      instructionUr: 'جاگنے پر پڑھیں۔',
      reference: 'Sahih al-Bukhari 6314',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 'e18',
      titleEn: 'Stopping-Place Protection',
      titleUr: 'قیام کی جگہ پر حفاظت',
      arabic: 'أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّةِ مِنْ شَرِّ مَا خَلَقَ',
      translationEn: 'Whoever says this when stopping at a place will not be harmed there.',
      translationUr: 'جو شخص کسی جگہ یہ پڑھے اسے وہاں نقصان نہیں پہنچے گا۔',
      instructionEn: 'Recite when arriving at a new place.',
      instructionUr: 'نئی جگہ پہنچ کر پڑھیں۔',
      reference: 'Sahih Muslim 2708',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'e19',
      titleEn: 'Protection for the Sick',
      titleUr: 'بیمار کے لیے حفاظت',
      arabic: 'كَانَ يَنْفُثُ عَلَى الْمَرِيضِ بِالْمُعَوِّذَاتِ',
      translationEn: 'He used to blow over the sick person with the Mu\'awwidhat.',
      translationUr: 'آپ ﷺ بیمار پر معوذات پڑھ کر دم کرتے تھے۔',
      instructionEn: 'Recite over the sick person.',
      instructionUr: 'بیمار پر پڑھ کر دم کریں۔',
      reference: 'Sahih Muslim 2192',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'e20',
      titleEn: 'Ruqyah for General Healing',
      titleUr: 'عام شفا کے لیے رقیہ',
      arabic: 'اللَّهُمَّ رَبَّ النَّاسِ أَذْهِبِ الْبَأْسَ اشْفِ أَنْتَ الشَّافِي',
      translationEn: 'O Allah, Lord of mankind, remove the harm and heal; You are the Healer.',
      translationUr: 'اے اللہ! لوگوں کے رب، تکلیف دور فرما اور شفا دے، تو ہی شفا دینے والا ہے۔',
      instructionEn: 'Recite when seeking healing.',
      instructionUr: 'شفا کے لیے پڑھیں۔',
      reference: 'Sahih al-Bukhari 5743; Sahih Muslim 2191',
      targetCount: 3,
    ),
  ];

  // ═══════════════════════════════════════════════════════════
  // 3. SICKNESS & GENERAL HEALING — بیماری اور شفا
  // ═══════════════════════════════════════════════════════════
  static List<ShifaEntity> sickness = [
    ShifaEntity(
      id: 's1',
      titleEn: 'For Sickness — Main Ruqyah Dua',
      titleUr: 'بیماری کے لیے اصل رقیہ دعا',
      arabic:
      'اللَّهُمَّ رَبَّ النَّاسِ أَذْهِبِ الْبَأْسَ اشْفِ أَنْتَ الشَّافِي لَا شِفَاءَ إِلَّا شِفَاؤُكَ شِفَاءً لَا يُغَادِرُ سَقَمًا',
      translationEn:
      'O Allah, Lord of mankind! Remove this hardship and grant cure — You are the Healer. There is no cure except Your cure, a cure that leaves behind no sickness.',
      translationUr:
      'اے اللہ، لوگوں کے رب! اس تکلیف کو دور کر دے اور شفاء دے — تو ہی شفاء دینے والا ہے۔ تیری شفاء کے سوا کوئی شفاء نہیں، ایسی شفاء جو کوئی بیماری نہ چھوڑے۔',
      instructionEn:
      'The Prophet ﷺ used to recite this while placing his right hand on the sick person and wiping over them.',
      instructionUr:
      'نبی ﷺ مریض پر سیدھا ہاتھ رکھ کر پھیرتے ہوئے یہ دعا پڑھتے تھے۔',
      reference: 'Sahih Bukhari 5750; Sahih Muslim 2191',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 's2',
      titleEn: 'Visiting the Sick',
      titleUr: 'مریض کی عیادت کی دعا',
      arabic: 'لَا بَأْسَ طَهُورٌ إِنْ شَاءَ اللَّهُ',
      translationEn:
      'No need to worry, it is a purification (of sins), if Allah wills.',
      translationUr:
      'گھبرانے کی کوئی بات نہیں، یہ (بیماری) گناہوں کو پاک کرنے والی ہے، ان شاء اللہ۔',
      instructionEn: 'Say this when visiting a sick person to console them.',
      instructionUr: 'مریض کی عیادت کرتے وقت تسلی کے لیے یہ کہیں۔',
      reference: 'Sahih Bukhari 3616',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 's3',
      titleEn: 'Dua to Recite Upon the Sick (7 Times)',
      titleUr: 'مریض کے لیے 7 مرتبہ دعا',
      arabic:
      'أَسْأَلُ اللَّهَ الْعَظِيمَ رَبَّ الْعَرْشِ الْعَظِيمِ أَنْ يَشْفِيَكَ',
      translationEn:
      'I ask Allah, the Magnificent, Lord of the Magnificent Throne, to heal you.',
      translationUr:
      'میں اللہ عظیم سے جو عرش عظیم کا رب ہے سوال کرتا ہوں کہ وہ تجھے شفاء دے۔',
      instructionEn:
      'Recite 7 times when visiting a sick person. It is reported that if it is his time to recover, he will be healed.',
      instructionUr:
      'مریض کی عیادت کرتے وقت 7 مرتبہ پڑھیں۔ روایت ہے کہ اگر اس کا وقت ہو تو وہ شفایاب ہو جائے گا۔',
      reference: 'Sunan Abi Dawud 3106; Jami at-Tirmidhi 2083 (Hasan)',
      targetCount: 7,
    ),
    ShifaEntity(
      id: 's4',
      titleEn: 'Surah Al-Fatihah as Ruqyah',
      titleUr: 'سورۃ الفاتحہ بطور رقیہ',
      arabic:
      'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ﴿١﴾ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ﴿٢﴾ الرَّحْمَٰنِ الرَّحِيمِ ﴿٣﴾ مَالِكِ يَوْمِ الدِّينِ ﴿٤﴾ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ﴿٥﴾ اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ ﴿٦﴾ صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ ﴿٧﴾',
      translationEn:
      'In the name of Allah, the Entirely Merciful, the Especially Merciful. All praise is due to Allah, Lord of the worlds — the Entirely Merciful, the Especially Merciful, Sovereign of the Day of Recompense. It is You we worship and You we ask for help. Guide us to the straight path — the path of those upon whom You have bestowed favor, not of those who have evoked anger or of those who are astray.',
      translationUr:
      'اللہ کے نام سے جو بہت مہربان، نہایت رحم والا ہے۔ سب تعریف اللہ کے لیے ہے جو تمام جہانوں کا رب ہے۔ بہت مہربان، نہایت رحم والا، روزِ جزا کا مالک۔ ہم تیری ہی عبادت کرتے ہیں اور تجھ ہی سے مدد مانگتے ہیں۔ ہمیں سیدھا راستہ دکھا، ان لوگوں کا راستہ جن پر تو نے انعام کیا، نہ ان کا جن پر غضب ہوا اور نہ گمراہوں کا۔',
      instructionEn:
      'A Companion recited Al-Fatiha over a man stung by a scorpion and he recovered. The Prophet ﷺ approved it saying "How did you know it is a ruqyah?" Recite and blow on the sick.',
      instructionUr:
      'ایک صحابی نے بچھو کے کاٹے ہوئے شخص پر فاتحہ پڑھی اور وہ ٹھیک ہو گیا۔ نبی ﷺ نے اسے منظور کیا۔ پڑھ کر مریض پر دم کریں۔',
      reference: 'Sahih Bukhari 5749; Sahih Muslim 2201',
      targetCount: 7,
    ),
    ShifaEntity(
      id: 's5',
      titleEn: 'Surah Al-Ikhlas (For Healing & Barakah)',
      titleUr: 'سورۃ الاخلاص (شفاء اور برکت کے لیے)',
      arabic:
      'قُلْ هُوَ اللَّهُ أَحَدٌ ﴿١﴾ اللَّهُ الصَّمَدُ ﴿٢﴾ لَمْ يَلِدْ وَلَمْ يُولَدْ ﴿٣﴾ وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَدٌ ﴿٤﴾',
      translationEn:
      'Say: He is Allah, the One. Allah, the Eternal Refuge. He neither begets nor was born. And there is none comparable to Him.',
      translationUr:
      'کہو: وہ اللہ ایک ہے۔ اللہ بے نیاز ہے۔ نہ اس کی کوئی اولاد ہے اور نہ وہ کسی سے پیدا ہوا۔ اور اس کا کوئی ہمسر نہیں۔',
      instructionEn:
      'Recite into both palms and wipe over body 3 times before sleeping. The Prophet ﷺ did this regularly.',
      instructionUr:
      'سونے سے پہلے دونوں ہتھیلیوں میں پڑھ کر جسم پر 3 مرتبہ پھیریں۔ نبی ﷺ یہ باقاعدگی سے کرتے تھے۔',
      reference: 'Sahih Bukhari 5017; Sahih Bukhari 6319',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 's6',
      titleEn: 'Dua of Prophet Ayyub (AS) — For Long Illness',
      titleUr: 'حضرت ایوب علیہ السلام کی دعا — طویل بیماری کے لیے',
      arabic: 'أَنِّي مَسَّنِيَ الضُّرُّ وَأَنْتَ أَرْحَمُ الرَّاحِمِينَ',
      translationEn:
      'Indeed, adversity has touched me, and You are the Most Merciful of the merciful.',
      translationUr:
      'بے شک مجھے تکلیف پہنچی ہے اور تو سب سے زیادہ رحم کرنے والا ہے۔',
      instructionEn:
      'The dua of Prophet Ayyub (AS) when he was ill for many years. Allah accepted it and restored his health. Recite with full trust in Allah.',
      instructionUr:
      'حضرت ایوب علیہ السلام کی دعا جو انہوں نے سالوں بیمار رہتے ہوئے کی۔ اللہ نے قبول فرمائی اور صحت عطا کی۔ پورے یقین سے پڑھیں۔',
      reference: 'Quran 21:83; Tafsir Ibn Kathir',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 's7',
      titleEn: 'Dua of Yunus (AS) — For Distress & Difficulty',
      titleUr: 'حضرت یونس علیہ السلام کی دعا — تنگی اور مصیبت کے لیے',
      arabic:
      'لَا إِلَٰهَ إِلَّا أَنْتَ سُبْحَانَكَ إِنِّي كُنْتُ مِنَ الظَّالِمِينَ',
      translationEn:
      'There is no deity except You; exalted are You. Indeed, I have been of the wrongdoers.',
      translationUr:
      'تیرے سوا کوئی معبود نہیں، تو پاک ہے، بے شک میں ظالموں میں سے تھا۔',
      instructionEn:
      'The Prophet ﷺ said: No Muslim calls upon Allah with these words in any matter except that Allah will respond to him. Recite in any hardship or illness.',
      instructionUr:
      'نبی ﷺ نے فرمایا: جو مسلمان کسی بھی معاملے میں ان کلمات سے اللہ کو پکارے تو اللہ ضرور قبول فرماتا ہے۔ کسی بھی مشکل یا بیماری میں پڑھیں۔',
      reference: 'Quran 21:87; Jami at-Tirmidhi 3505 (Sahih)',
      targetCount: 40,
    ),
  ];

  // ═══════════════════════════════════════════════════════════
  // 4. MORNING & EVENING PROTECTION — صبح و شام کی حفاظت
  // ═══════════════════════════════════════════════════════════


  // ═══════════════════════════════════════════════════════════
  // 5. ANXIETY, GRIEF & MENTAL DISTRESS — غم، فکر اور ذہنی تکلیف
  // ═══════════════════════════════════════════════════════════
  static List<ShifaEntity> anxietyGrief = [
    ShifaEntity(
      id: 'a1',
      titleEn: 'Dua for Anxiety & Grief',
      titleUr: 'غم اور پریشانی کی دعا',
      arabic:
      'اللَّهُمَّ إِنِّي عَبْدُكَ وَابْنُ عَبْدِكَ وَابْنُ أَمَتِكَ نَاصِيَتِي بِيَدِكَ مَاضٍ فِيَّ حُكْمُكَ عَدْلٌ فِيَّ قَضَاؤُكَ أَسْأَلُكَ بِكُلِّ اسْمٍ هُوَ لَكَ سَمَّيْتَ بِهِ نَفْسَكَ أَوْ أَنْزَلْتَهُ فِي كِتَابِكَ أَوْ عَلَّمْتَهُ أَحَدًا مِنْ خَلْقِكَ أَوِ اسْتَأْثَرْتَ بِهِ فِي عِلْمِ الْغَيْبِ عِنْدَكَ أَنْ تَجْعَلَ الْقُرْآنَ رَبِيعَ قَلْبِي وَنُورَ صَدْرِي وَجَلَاءَ حُزْنِي وَذَهَابَ هَمِّي',
      translationEn:
      'O Allah, I am Your servant, son of Your servant, son of Your maidservant; my forelock is in Your hand, Your command over me is forever executed and Your decree over me is just. I ask You by every name belonging to You which You named Yourself with, or revealed in Your Book, or You taught to any of Your creation, or You have preserved in the knowledge of the Unseen with You, that You make the Quran the spring of my heart, the light of my chest, the banisher of my grief and the reliever of my anxiety.',
      translationUr:
      'اے اللہ! میں تیرا بندہ ہوں، تیرے بندے کا بیٹا، تیری بندی کا بیٹا۔ میری پیشانی تیرے ہاتھ میں ہے۔ تیرا حکم مجھ پر نافذ ہے اور تیرا فیصلہ مجھ پر عدل ہے۔ میں تجھ سے سوال کرتا ہوں ہر اس نام کے ذریعے جو تیرا ہے... کہ تو قرآن کو میرے دل کی بہار، میرے سینے کا نور، میرے غم کا ازالہ اور میری پریشانی کو دور کرنے والا بنا دے۔',
      instructionEn:
      'The Prophet ﷺ said: Allah will take away his grief and replace it with joy. When a person recites this dua with full heart.',
      instructionUr:
      'نبی ﷺ نے فرمایا: اللہ اس کا غم دور کرے گا اور اس کی جگہ خوشی دے گا۔ جب بندہ یہ دعا پوری طرح پڑھے۔',
      reference: 'Musnad Ahmad 3712 (Sahih by al-Albani)',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 'a2',
      titleEn: 'Dua for Ease in Difficulty',
      titleUr: 'مشکل میں آسانی کی دعا',
      arabic:
      'اللَّهُمَّ لَا سَهْلَ إِلَّا مَا جَعَلْتَهُ سَهْلًا وَأَنْتَ تَجْعَلُ الْحَزْنَ إِذَا شِئْتَ سَهْلًا',
      translationEn:
      'O Allah, nothing is easy except what You make easy, and You make the difficult easy if You wish.',
      translationUr:
      'اے اللہ! کوئی چیز آسان نہیں مگر جسے تو آسان کرے، اور تو چاہے تو مشکل کو بھی آسان کر دیتا ہے۔',
      instructionEn: 'Recite in any difficulty or hardship.',
      instructionUr: 'کسی بھی تنگی یا مشکل میں پڑھیں۔',
      reference: 'Sunan Ibn Majah 3891; Sahih Ibn Hibban 974 (Sahih)',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'a3',
      titleEn: 'Dua for Removing Grief',
      titleUr: 'غم دور کرنے کی دعا',
      arabic:
      'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْهَمِّ وَالْحَزَنِ وَالْعَجْزِ وَالْكَسَلِ وَالْبُخْلِ وَالْجُبْنِ وَضَلَعِ الدَّيْنِ وَغَلَبَةِ الرِّجَالِ',
      translationEn:
      'O Allah, I seek refuge with You from worry and grief, from incapacity and laziness, from miserliness and cowardice, from being heavily in debt and from being overpowered by men.',
      translationUr:
      'اے اللہ! میں تیری پناہ مانگتا ہوں فکر و غم سے، عاجزی اور سستی سے، بخل اور بزدلی سے، قرض کے بوجھ سے اور لوگوں کے غلبے سے۔',
      instructionEn:
      'The Prophet ﷺ used to say this dua regularly. Recite morning and evening.',
      instructionUr:
      'نبی ﷺ یہ دعا کثرت سے پڑھتے تھے۔ صبح و شام پڑھیں۔',
      reference: 'Sahih Bukhari 6369; Sahih Muslim 2706',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 'a4',
      titleEn: 'Dua in Times of Extreme Distress',
      titleUr: 'شدید پریشانی کی دعا',
      arabic:
      'لَا إِلَٰهَ إِلَّا اللَّهُ الْعَظِيمُ الْحَلِيمُ لَا إِلَٰهَ إِلَّا اللَّهُ رَبُّ الْعَرْشِ الْعَظِيمِ لَا إِلَٰهَ إِلَّا اللَّهُ رَبُّ السَّمَاوَاتِ وَرَبُّ الْأَرْضِ وَرَبُّ الْعَرْشِ الْكَرِيمِ',
      translationEn:
      'There is no deity except Allah, the Magnificent, the Forbearing. There is no deity except Allah, Lord of the Magnificent Throne. There is no deity except Allah, Lord of the heavens and Lord of the earth and Lord of the Noble Throne.',
      translationUr:
      'اللہ کے سوا کوئی معبود نہیں، وہ عظیم، بردبار ہے۔ اللہ کے سوا کوئی معبود نہیں، عرش عظیم کا رب۔ اللہ کے سوا کوئی معبود نہیں، آسمانوں کا رب، زمین کا رب اور کریم عرش کا رب۔',
      instructionEn:
      'The Prophet ﷺ used to say this when he was in distress. It is one of the most powerful duas for calamity.',
      instructionUr:
      'نبی ﷺ جب پریشانی میں ہوتے تو یہ پڑھتے تھے۔ یہ مصیبت میں سب سے طاقتور دعاؤں میں سے ہے۔',
      reference: 'Sahih Bukhari 6346; Sahih Muslim 2730',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'a5',
      titleEn: 'Dua: Hasbunallah wa Ni\'mal Wakeel',
      titleUr: 'حسبنا اللہ — اللہ ہمیں کافی ہے',
      arabic: 'حَسْبُنَا اللَّهُ وَنِعْمَ الْوَكِيلُ',
      translationEn: 'Allah is sufficient for us, and He is the best Disposer of affairs.',
      translationUr:
      'ہمیں اللہ کافی ہے اور وہ بہترین کارساز ہے۔',
      instructionEn:
      'Ibrahim (AS) said this when thrown into fire; the Prophet ﷺ and companions said it in fear. Recite in any fear or overwhelming situation.',
      instructionUr:
      'ابراہیم علیہ السلام نے آگ میں ڈالے جاتے وقت یہ کہا، نبی ﷺ اور صحابہ نے خوف میں یہ کہا۔ کسی بھی خوف یا بھاری صورتحال میں پڑھیں۔',
      reference: 'Sahih Bukhari 4563; Quran 3:173',
      targetCount: 100,
    ),
  ];

  // ═══════════════════════════════════════════════════════════
  // 6. CHILDREN'S PROTECTION — بچوں کی حفاظت
  // ═══════════════════════════════════════════════════════════
  static List<ShifaEntity> childProtection = [
    ShifaEntity(
      id: 'c1',
      titleEn: 'Ibrahim\'s Dua for Children\'s Protection',
      titleUr: 'ابراہیم علیہ السلام کی بچوں کے لیے دعا',
      arabic:
      'أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّةِ مِنْ كُلِّ شَيْطَانٍ وَهَامَّةٍ وَمِنْ كُلِّ عَيْنٍ لَامَّةٍ',
      translationEn:
      'I seek refuge in the perfect words of Allah from every devil and every poisonous creature, and from every evil eye.',
      translationUr:
      'میں اللہ کے کامل کلمات کی پناہ مانگتا ہوں ہر شیطان، زہریلے جانور اور ہر لگ جانے والی نظرِ بد سے۔',
      instructionEn:
      'The Prophet ﷺ used to seek protection for Hasan and Husain with these words, saying: Your forefather Ibrahim used to seek protection for Isma\'il and Ishaq with these words.',
      instructionUr:
      'نبی ﷺ حسن اور حسین کے لیے انہی الفاظ سے پناہ مانگتے اور فرماتے: تمہارے جد ابراہیم اسماعیل اور اسحاق کے لیے انہی کلمات سے پناہ مانگتے تھے۔',
      reference: 'Sahih Bukhari 3371; Sunan Abi Dawud 4737',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'c2',
      titleEn: 'Dua Before Child Sleeps',
      titleUr: 'بچے کو سلاتے وقت کی دعا',
      arabic:
      'أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ',
      translationEn:
      'I seek refuge in the perfect words of Allah from the evil of what He has created.',
      translationUr:
      'میں اللہ کے کامل کلمات کی پناہ مانگتا ہوں ہر اس چیز کے شر سے جو اس نے پیدا کی۔',
      instructionEn:
      'Recite 3 times over the child before sleeping. Whoever says this will not be harmed by anything.',
      instructionUr:
      'بچے کو سلاتے وقت 3 مرتبہ پڑھیں۔ جو یہ پڑھے اسے کوئی چیز نقصان نہ پہنچائے۔',
      reference: 'Sahih Muslim 2708',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'c3',
      titleEn: 'Ayatul Kursi Before Sleeping (for Children)',
      titleUr: 'بچوں کے لیے سوتے وقت آیۃ الکرسی',
      arabic:
      'اللَّهُ لَا إِلَٰهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ لَهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ مَنْ ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلَّا بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلَا يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلَّا بِمَا شَاءَ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ وَلَا يَئُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ',
      translationEn:
      'Allah — there is no deity except Him, the Ever-Living, the Sustainer of all existence. Neither drowsiness overtakes Him nor sleep...',
      translationUr:
      'اللہ — اس کے سوا کوئی معبود نہیں، وہ ہمیشہ زندہ ہے، سب کا تھامنے والا ہے۔ نہ اسے اونگھ آتی ہے نہ نیند...',
      instructionEn:
      'Recite over the child before sleeping. A guardian angel will stay with the child all night and no devil will approach.',
      instructionUr:
      'بچے کو سلاتے وقت پڑھیں۔ ایک محافظ فرشتہ رات بھر بچے کے ساتھ رہے گا اور کوئی شیطان قریب نہ آئے گا۔',
      reference: 'Sahih Bukhari 2311',
      targetCount: 1,
    ),
  ];

  // ═══════════════════════════════════════════════════════════
  // 7. SLEEP & NIGHTMARES — نیند اور ڈراؤنے خواب
  // ═══════════════════════════════════════════════════════════
  static List<ShifaEntity> sleepNightmares = [
    ShifaEntity(
      id: 'sl1',
      titleEn: 'Dua for Bad Dream / Nightmare',
      titleUr: 'ڈراؤنے خواب کی دعا',
      arabic:
      'أَعُوذُ بِاللَّهِ مِنَ الشَّيْطَانِ الرَّجِيمِ وَمِنْ شَرِّ هَٰذِهِ الرُّؤْيَا',
      translationEn:
      'I seek refuge in Allah from the accursed Shaytan and from the evil of this dream.',
      translationUr:
      'میں شیطان مردود اور اس خواب کے شر سے اللہ کی پناہ مانگتا ہوں۔',
      instructionEn:
      'If you see a bad dream: spit lightly to your left 3 times, seek refuge from Shaytan and from the evil of what you saw, and change your side.',
      instructionUr:
      'ڈراؤنا خواب آئے تو: بائیں طرف 3 مرتبہ ہلکے سے تھوکیں، شیطان اور خواب کے شر سے پناہ مانگیں، اور کروٹ بدل لیں۔',
      reference: 'Sahih Muslim 2261; Sahih Bukhari 6984',
      targetCount: 3,
    ),
    ShifaEntity(
      id: 'sl2',
      titleEn: 'Dua Before Sleeping',
      titleUr: 'سونے سے پہلے کی دعا',
      arabic:
      'بِاسْمِكَ اللَّهُمَّ أَمُوتُ وَأَحْيَا',
      translationEn:
      'In Your name, O Allah, I die and I live.',
      translationUr:
      'اے اللہ! تیرے نام سے میں مرتا ہوں اور جیتا ہوں۔',
      instructionEn:
      'Recite when lying down to sleep.',
      instructionUr:
      'سونے کے لیے لیٹتے وقت پڑھیں۔',
      reference: 'Sahih Bukhari 6312',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 'sl3',
      titleEn: '3 Quls Before Sleeping (Nabi\'s Practice)',
      titleUr: 'سونے سے پہلے تین قل (نبوی عمل)',
      arabic:
      'قُلْ هُوَ اللَّهُ أَحَدٌ ۔۔۔ (سورۃ الاخلاص)\nقُلْ أَعُوذُ بِرَبِّ الْفَلَقِ ۔۔۔ (سورۃ الفلق)\nقُلْ أَعُوذُ بِرَبِّ النَّاسِ ۔۔۔ (سورۃ الناس)',
      translationEn:
      'Surah Al-Ikhlas, Surah Al-Falaq, Surah An-Nas (all three complete surahs).',
      translationUr:
      'سورۃ الاخلاص، سورۃ الفلق اور سورۃ الناس (تینوں سورتیں مکمل)۔',
      instructionEn:
      'Recite all three into cupped palms, blow into them, then wipe over as much of the body as you can — starting from the head and face. Repeat 3 times. The Prophet ﷺ did this every night.',
      instructionUr:
      'تینوں سورتیں ہتھیلیوں میں پڑھ کر پھونکیں، پھر سر اور چہرے سے شروع کر کے جتنا جسم ہو سکے پھیریں۔ 3 مرتبہ دہرائیں۔ نبی ﷺ ہر رات یہ کرتے تھے۔',
      reference: 'Sahih Bukhari 5017; Sahih Bukhari 6319',
      targetCount: 3,
    ),
  ];

  // ═══════════════════════════════════════════════════════════
  // 8. POISON & STING — زہر اور ڈنک
  // ═══════════════════════════════════════════════════════════
  static List<ShifaEntity> poisonSting = [
    ShifaEntity(
      id: 'ps1',
      titleEn: 'Surah Al-Fatihah for Scorpion Sting',
      titleUr: 'بچھو کے ڈنک کے لیے سورۃ الفاتحہ',
      arabic:
      'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ﴿١﴾ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ﴿٢﴾ الرَّحْمَٰنِ الرَّحِيمِ ﴿٣﴾ مَالِكِ يَوْمِ الدِّينِ ﴿٤﴾ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ﴿٥﴾ اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ ﴿٦﴾ صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ ﴿٧﴾',
      translationEn:
      'In the name of Allah, the Entirely Merciful, the Especially Merciful. All praise is due to Allah, Lord of the worlds...',
      translationUr:
      'اللہ کے نام سے جو بہت مہربان نہایت رحم والا ہے۔ سب تعریف اللہ کے لیے ہے...',
      instructionEn:
      'A Companion recited Surah Al-Fatiha 7 times over a man stung by a scorpion. The man recovered fully. The Prophet ﷺ approved it. Recite 7 times and blow on the affected area.',
      instructionUr:
      'ایک صحابی نے بچھو کے کاٹے شخص پر سورۃ فاتحہ 7 مرتبہ پڑھی۔ وہ مکمل ٹھیک ہو گیا۔ نبی ﷺ نے منظور فرمایا۔ 7 مرتبہ پڑھ کر متاثرہ جگہ پر دم کریں۔',
      reference: 'Sahih Bukhari 5749; Sahih Muslim 2201',
      targetCount: 7,
    ),
    ShifaEntity(
      id: 'ps2',
      titleEn: 'General Ruqyah for Snake / Scorpion Bite',
      titleUr: 'سانپ یا بچھو کے کاٹے کی رقیہ',
      arabic:
      'أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ',
      translationEn:
      'I seek refuge in the perfect words of Allah from the evil of what He has created.',
      translationUr:
      'میں اللہ کے کامل کلمات کی پناہ مانگتا ہوں ہر اس چیز کے شر سے جو اس نے پیدا کی۔',
      instructionEn:
      'Recite and blow on the affected area repeatedly. Also recite Surah Al-Falaq and Surah An-Nas.',
      instructionUr:
      'متاثرہ جگہ پر بار بار پڑھ کر دم کریں۔ سورۃ الفلق اور سورۃ الناس بھی پڑھیں۔',
      reference: 'Sahih Muslim 2708; Sahih Bukhari (Kitab al-Tibb)',
      targetCount: 7,
    ),
  ];

  // ═══════════════════════════════════════════════════════════
  // 9. GENERAL WELLBEING & TIBB-E-NABAWI — عمومی صحت
  // ═══════════════════════════════════════════════════════════
  static List<ShifaEntity> generalWellbeing = [
    ShifaEntity(
      id: 'g1',
      titleEn: 'Dua for Seeking Cure (Visiting Sick)',
      titleUr: 'مریض سے ملتے وقت شفاء کی دعا',
      arabic:
      'أَسْأَلُ اللَّهَ الْعَظِيمَ رَبَّ الْعَرْشِ الْعَظِيمِ أَنْ يَشْفِيَكَ',
      translationEn:
      'I ask Allah the Magnificent, Lord of the Magnificent Throne, to heal you.',
      translationUr:
      'میں اللہ عظیم سے جو عرش عظیم کا رب ہے سوال کرتا ہوں کہ وہ تجھے شفاء دے۔',
      instructionEn:
      'Recite 7 times when visiting a sick person. If it is their time to recover, Allah will heal them.',
      instructionUr:
      'مریض کی عیادت کرتے وقت 7 مرتبہ پڑھیں۔ اگر صحت کا وقت ہو تو اللہ شفاء دے گا۔',
      reference: 'Sunan Abi Dawud 3106; Jami at-Tirmidhi 2083 (Hasan)',
      targetCount: 7,
    ),
    ShifaEntity(
      id: 'g2',
      titleEn: 'Dua for All Hardship (Nabi\'s Comprehensive Dua)',
      titleUr: 'ہر تکلیف کی جامع دعا',
      arabic:
      'اللَّهُمَّ رَبَّ النَّاسِ مُذْهِبَ الْبَأْسِ اشْفِ أَنْتَ الشَّافِي لَا شَافِيَ إِلَّا أَنْتَ شِفَاءً لَا يُغَادِرُ سَقَمًا',
      translationEn:
      'O Allah, Lord of mankind, Remover of hardship — heal, for You are the Healer; there is no healer except You. A healing that leaves no illness.',
      translationUr:
      'اے اللہ لوگوں کے رب، تکلیف دور کرنے والے — شفاء دے، تو ہی شفاء دینے والا ہے، تیرے سوا کوئی شفاء دینے والا نہیں۔ ایسی شفاء جو کوئی بیماری نہ چھوڑے۔',
      instructionEn: 'Recite while placing hand on patient.',
      instructionUr: 'مریض پر ہاتھ رکھ کر پڑھیں۔',
      reference: 'Sahih Bukhari 5675; Riyad as-Salihin Book 7, Hadith 10',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 'g3',
      titleEn: 'Dua: Islam\'s Prescription for Treatment',
      titleUr: 'علاج کا اسلامی حکم',
      arabic:
      'تَدَاوَوْا فَإِنَّ اللَّهَ لَمْ يَضَعْ دَاءً إِلَّا وَضَعَ لَهُ شِفَاءً',
      translationEn:
      'Seek treatment, for Allah has not created a disease except that He has created its cure.',
      translationUr:
      'علاج کراؤ، کیونکہ اللہ نے کوئی بیماری نہیں رکھی مگر اس کا علاج بھی رکھا ہے۔',
      instructionEn:
      'This is a hadith, not a dua. It reminds us to seek both spiritual AND medical treatment. Do not neglect doctors.',
      instructionUr:
      'یہ ایک حدیث ہے، دعا نہیں۔ یہ یاد دلاتی ہے کہ روحانی اور طبی دونوں علاج کریں۔ ڈاکٹر سے غفلت نہ کریں۔',
      reference: 'Sunan Abi Dawud 3855; Jami at-Tirmidhi 2038 (Sahih)',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 'g4',
      titleEn: 'Dua When Entering Hospital / Doctor',
      titleUr: 'ہسپتال یا ڈاکٹر کے پاس جاتے وقت',
      arabic:
      'بِسْمِ اللَّهِ تَوَكَّلْتُ عَلَى اللَّهِ لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ',
      translationEn:
      'In the name of Allah, I place my trust in Allah. There is no power or might except with Allah.',
      translationUr:
      'اللہ کے نام سے، میں نے اللہ پر توکل کیا۔ اللہ کے سوا کوئی طاقت و قوت نہیں۔',
      instructionEn:
      'Recite when going out for treatment or entering a hospital. It is reported that when one says this, it is said to him: you are guided, protected, and safeguarded.',
      instructionUr:
      'علاج کے لیے نکلتے یا ہسپتال داخل ہوتے وقت پڑھیں۔ روایت ہے کہ جو یہ کہے اسے کہا جاتا ہے: ہدایت ہو گئی، حفاظت ہو گئی، بچا لیا گیا۔',
      reference: 'Sunan Abi Dawud 5095; Jami at-Tirmidhi 3426 (Sahih)',
      targetCount: 1,
    ),
    ShifaEntity(
      id: 'g5',
      titleEn: 'Dua for Gratitude After Recovery',
      titleUr: 'شفاء کے بعد شکرانے کی دعا',
      arabic:
      'الْحَمْدُ لِلَّهِ الَّذِي عَافَانِي مِمَّا ابْتَلَاكَ بِهِ وَفَضَّلَنِي عَلَى كَثِيرٍ مِمَّنْ خَلَقَ تَفْضِيلًا',
      translationEn:
      'All praise is for Allah who saved me from that which He has afflicted you with, and has preferred me greatly above much of His creation.',
      translationUr:
      'تمام تعریف اللہ کے لیے ہے جس نے مجھے اس مصیبت سے بچایا جس میں تجھے ڈالا اور اپنی بہت سی مخلوق پر مجھے فضیلت دی۔',
      instructionEn:
      'Recite silently when you see someone afflicted with illness. It protects you from being afflicted by the same.',
      instructionUr:
      'جب کسی بیمار کو دیکھیں تو آہستہ پڑھیں۔ یہ آپ کو اسی بیماری سے محفوظ رکھتا ہے۔',
      reference: 'Jami at-Tirmidhi 3432 (Hasan)',
      targetCount: 1,
    ),
  ];

  // ═══════════════════════════════════════════════════════════
  // CATEGORIES
  // ═══════════════════════════════════════════════════════════
  static List<ShifaCategory> categories = [
    ShifaCategory(
      id: 'pain',
      titleEn: 'Physical Pain',
      titleUr: 'جسمانی درد',
      duas: physicalPain,
    ),
    ShifaCategory(
      id: 'eye',
      titleEn: 'Evil Eye & Magic',
      titleUr: 'نظرِ بد اور جادو',
      duas: evilEye,
    ),
    ShifaCategory(
      id: 'sick',
      titleEn: 'Sickness & Healing',
      titleUr: 'بیماری اور شفا',
      duas: sickness,
    ),

    ShifaCategory(
      id: 'anxiety',
      titleEn: 'Anxiety & Grief',
      titleUr: 'غم اور پریشانی',
      duas: anxietyGrief,
    ),
    ShifaCategory(
      id: 'child',
      titleEn: 'Children\'s Protection',
      titleUr: 'بچوں کی حفاظت',
      duas: childProtection,
    ),
    ShifaCategory(
      id: 'sleep',
      titleEn: 'Sleep & Nightmares',
      titleUr: 'نیند اور ڈراؤنے خواب',
      duas: sleepNightmares,
    ),
    ShifaCategory(
      id: 'poison',
      titleEn: 'Poison & Sting',
      titleUr: 'زہر اور ڈنک',
      duas: poisonSting,
    ),
    ShifaCategory(
      id: 'general',
      titleEn: 'General Wellbeing',
      titleUr: 'عمومی صحت',
      duas: generalWellbeing,
    ),
  ];

  static List<ShifaEntity> allDuas = [
    ...physicalPain,
    ...evilEye,
    ...sickness,
    ...anxietyGrief,
    ...childProtection,
    ...sleepNightmares,
    ...poisonSting,
    ...generalWellbeing,
  ];
}
