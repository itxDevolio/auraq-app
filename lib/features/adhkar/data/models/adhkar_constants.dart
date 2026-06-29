import '../../domain/entities/dhikr_entity.dart';
import 'package:quran/quran.dart' as quran;

class AdhkarCategory {
  final String id;
  final String titleEn;
  final List<DhikrEntity> dhikrs;

  AdhkarCategory({
    required this.id,
    required this.titleEn,
    required this.dhikrs,
  });
}

class AdhkarConstants {
  static List<DhikrEntity> morningAdhkar = [
    DhikrEntity(
      id: 'm1',
      arabic: 'آيَةُ الْكُرْسِي',
      english: 'Ayatul Kursi',
      urdu: 'آیت الکرسی',
      reference: 'Sahih al-Bukhari 2311',
      fazilatEnglish: """ who recites Ayat-al-Kursi (Al-Baqara:255) becomes safe
from Shaitan and Jinn and a guard is appointed for his
safety.""",
      fazilatUrdu: """255 پڑھنے والا شیطان اور جنات سے حفوظ ہو
جاتا ہے اور اُسکی حفاظت کیلئے ان ایک محافظ مقرر کر دیا جاتا ہے""",
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'm2',
      arabic:
          'قُلْ هُوَ اللَّهُ أَحَدٌ،\n'
          ' قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ\n'
          ' قُلْ أَعُوذُ بِرَبِّ النَّاسِ',
      english: 'Recitation of the Three Muawwidhat',
      urdu: 'تینوں معوذات کی تلاوت',
      reference: 'Jami` at-Tirmidhi 3575',
      fazilatEnglish:
          'The recitation of Muawwidhat will suffice you against everything (against Jinn and magic).',
      fazilatUrdu:
          'معوذات کی تلاوت (جنات اور جادو کے خلاف) ہر شے سے کافی ہو جاتی ہے۔',
      count: 0,
      targetCount: 3,
    ),
    DhikrEntity(
      id: 'm3',
      arabic:
          'لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ',
      english:
          'There is none worthy of worship but Allah alone with no partner or associate, He is the dominion, to Him is praise and He has power over all things.',
      urdu:
          'نہیں کوئی معبود مگر اللہ، وہ اکیلا ہے، نہیں کوئی شریک اُسکا، اُسی کی بادشاہی ہے، اور اسی کے لئے سب تعریفیں ہیں، اور وہ ہر شے پر پوری طرح قدرت رکھتا ہے۔',
      reference: 'Sunan Abi Dawud 5082',
      fazilatEnglish:
          'The one who recites these words gets reward of freeing 4 slaves. And he is guarded against every dangerous thing and Shaitan during the entire day and night. (Note: Reciting 100 times everyday is the best practice - Bukhari: 6403, Muslim: 6842)',
      fazilatUrdu:
          'کلمات پڑھنے والے کو 4 غلام آزاد کرنے کا ثواب ملتا ہے اور تمام دن رات میں ہر خطرناک چیز اور شیطان کے خلاف اُسکا بچاؤ ہو جاتا ہے۔ (نوٹ: ہر روز 100 بار پڑھنا فضل ترین عمل ہے - بخاری: 6403، مسلم: 6842)',
      count: 0,
      targetCount: 10,
    ),
    DhikrEntity(
      id: 'm4',
      arabic:
          'رَضِيتُ بِاللهِ رَبَّا وَ بِالْإِسْلَامِ دِينًا وَبِمُحَمَّدٍ نَّبِيًّا',
      english:
          'We are pleased with Allah as our Lord, Islam as our religion, and Muhammad as our Messenger.',
      urdu:
          'راضی ہوں میں اللہ کے رب ہونے پر، اور اسلام کے دین ہونے پر، اور محمد ﷺ کے نبی ہونے پر۔',
      reference: 'Sunan Abi Dawud 5072, Musnad Ahmad 18990',
      fazilatEnglish:
          'The one who recites these words will surely get the Heaven and Allah will please him on the Day of Judgment. (Recite 3 times in the morning and in the evening.)',
      fazilatUrdu:
          'یہ کلمات پڑھنے والے پر جنت واجب ہو جائیگی اور قیامت والے دن اللہ اسے خوش کر دے گا۔ (3 مرتبہ صبح اور شام)',
      count: 0,
      targetCount: 3,
    ),
    DhikrEntity(
      id: 'm5',
      arabic:
          'بِسْمِ اللهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الْأَرْضِ وَلَا فِي السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ',
      english:
          'In the name of Allah with whose name nothing on earth or in the heaven can cause harm and He is the Hearing, the Knowing.',
      urdu:
          'اللہ کے نام کے ساتھ، جس کے نام کے ساتھ زمین و آسمان میں کوئی چیز نقصان نہیں پہنچا سکتی، اور وہی سننے والا جاننے والا ہے۔',
      reference: 'Jami` at-Tirmidhi 3388, Sunan Abi Dawud 5088',
      fazilatEnglish:
          'Nothing can harm the person who recites these words nor will any sudden disaster reach him. (Recite 3 times in the morning and in the evening.)',
      fazilatUrdu:
          'یہ کلمات پڑھنے والے کو نہ تو کوئی شے نقصان پہنچا سکتی ہے اور نہ ہی کوئی اچانک ناگہانی مصیبت اُسے پہنچے گی۔ (3 مرتبہ صبح اور شام)',
      count: 0,
      targetCount: 3,
    ),
    DhikrEntity(
      id: 'm6',
      arabic: 'أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ',
      english:
          'I seek refuge (of Allah) in the Perfect Words of Allah from the evil of that which He has created.',
      urdu:
          'میں اللہ کے کلماتِ کاملہ کی پناہ پکڑتا ہوں ہر اس چیز کے شر سے جو اُس نے پیدا کی۔',
      reference: 'Muslim 6880',
      fazilatEnglish:
          'The sting of the poisonous animal will not cause harm to the person who recites these words. (Recite 3 times in the morning.)',
      fazilatUrdu:
          'یہ کلمات پڑھنے والے کو زہریلے جانور کا ڈنگ نقصان نہیں پہنچا سکے گا۔ (3 مرتبہ صبح)',
      count: 0,
      targetCount: 3,
    ),
    DhikrEntity(
      id: 'm7',
      arabic:
          'سُبْحَانَ اللهِ وَبِحَمْدِهِ عَدَدَ خَلْقِهِ وَرِضَى نَفْسِهِ وَزِنَةَ عَرْشِهِ وَمِدَادَ كَلِمَاتِهِ',
      english:
          'Glory and praise is to Allah, as much as the number of His creation, as much as pleases Him, as much as the weight of His Throne and as much as the ink of His words.',
      urdu:
          'اللہ پاک ہے اور اپنی تعریف کے ساتھ ہے، اپنی مخلوق کی گنتی کے برابر، اور اپنے نفس کی رضا کے برابر، اور اپنے عرش کے وزن کے برابر، اور اپنے کلمات کی سیاہی کے برابر۔',
      reference: 'Muslim 6913',
      fazilatEnglish:
          'The one who recites these words gets more reward than the person who worships continuously from the Fajr prayer till forenoon. (Recite 3 times in the morning.)',
      fazilatUrdu:
          'یہ کلمات پڑھنے والے کو نمازِ فجر سے لے کر اشراق تک مسلسل عبادت کرنے والے شخص سے भी زیادہ ثواب حاصل ہوتا ہے۔ (3 مرتبہ صبح)',
      count: 0,
      targetCount: 3,
    ),
    DhikrEntity(
      id: 'm8',
      arabic:
          'اسْتَغْفِرُ اللهَ الَّذِي لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ وَاتُوبُ إِلَيْهِ',
      english:
          'I seek Allah’s forgiveness. The One besides Whom there is none worthy of worship, the Ever-Living, the Sustainer, and I turn to Him in repentance.',
      urdu:
          'میں اللہ سے مغفرت طلب کرتا ہوں، نہیں کوئی معبود مگر وہ، خود سے زندہ، ہر چیز کو قائم رکھنے والا ہے اور میں اُسی کی طرف توبہ کرتا ہوں۔',
      reference: 'Jami` at-Tirmidhi 3577, Sunan Abi Dawud 1517',
      fazilatEnglish:
          'All sins of the person who recites these words will be forgiven, even if he had fled the battle-field. (Recite 3 times in the morning.)',
      fazilatUrdu:
          'یہ کلمات پڑھنے والے کے سارے گناہ معاف کر دیئے جائیں گے اگرچہ وہ شخص میدانِ جنگ سے بزدلی دکھا کر بھاگ چکا ہو۔ (3 مرتبہ صبح)',
      count: 0,
      targetCount: 3,
    ),
    DhikrEntity(
      id: 'm9',
      arabic: 'اللَّهُمَّ أَجِرْنِي مِنَ النَّارِ',
      english: 'O Allah! Save me from Fire.',
      urdu: 'اے اللہ! بچا لے مجھ کو آگ (دوزخ) سے۔',
      reference: 'Sunan Abi Dawud 5079',
      fazilatEnglish:
          'Whoever recites these words at the end of Fajr prayer before speaking and dies that day, he will be free from the fire of Hell. (7 times, immediately after Fajr prayer.)',
      fazilatUrdu:
          'جو شخص نمازِ فجر کے بعد گفتگو سے پہلے یہ کلمات پڑھے اور اُسی دن اُسے موت آگئی تو دوزخ کی آگ سے آزاد ہوگا۔ (7 مرتبہ فجر کے فوراً بعد)',
      count: 0,
      targetCount: 7,
    ),
    DhikrEntity(
      id: 'm10',
      arabic:
          'اللَّهُمَّ بِكَ أَصْبَحْنَا وَبِكَ أَمْسَيْنَا وَبِكَ أَصْبَحْنَا وَبِكَ نَحْيَا وَبِكَ نَمُوتُ وَإِلَيْكَ النُّشُورُ',
      english:
          'O Allah! By You we have entered the morning, and by You we have entered the evening, and by You we live, and by You we die, and to You is the return.',
      urdu:
          'اے اللہ! ہم نے تیرے نام کے ساتھ صبح کی، اور تیری ہی طرف سے اٹھنا ہے۔',
      reference: 'Jami` at-Tirmidhi 3391',
      fazilatEnglish:
          'The Messenger of Allah would recite these 6 supplications.',
      fazilatUrdu: 'رسول اللہ ﷺ یہ 6 دُعائیں مانگتے تھے (تمام 1 مرتبہ)',
      count: 0,
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'm11',
      arabic:
          'أَصْبَحْنَا عَلَى فِطْرَةِ الْإِسْلامِ وَعَلَى كَلِمَةِ الْإِخْلَاصِ وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ وَعَلَى مِلَّةِ أَبِيْنَا إِبْرَاهِيمَ حَنِيفًا مُسلِمًا وَمَا کَانَ مِنَ الْمُشْرِكِينَ',
      english:
          'We have entered the morning while we are on the innateness of Islam, the word of sincere devotion, the religion of our Prophet Muhammad and on the creed of our forefather Abraham, he was upright, and a Muslim. He was not from those who associate partners with Allah.',
      urdu:
          'ہم نے صبح کی فطرتِ اسلام پر، اور کلمہ اخلاص پر، اور ہمارے نبی محمد ﷺ کے دین پر، اور ہمارے باپ ابراہیم علیہ السلام کی ملت پر جو یکسو مسلم تھے اور مشرک نہ تھے۔',
      reference: 'Musnad Ahmad 15360',
      fazilatEnglish: 'Dhikr of the morning.',
      fazilatUrdu: 'صبح کے اذکار میں سے ایک دُعا۔',
      count: 0,
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'm12',
      arabic:
      'أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلهِ وَالْحَمْدُ لِلَّهِ لَا إِلَهَ إِلَّا اللهُ وَحْدَهُ لَا شَرِیکَ لَهُ ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ ، رَبِّ أَسْأَلُكَ خَيْرَ مَا فِي هَذَا الْيَوْمِ وَخَيْرَ مَا بَعْدَهُ وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فِي هَذَا الْيَوْمِ وَشَرِّ مَا بَعْدَهُ رَبِّ أَعُوذُ بِكَ مِنَ الْكَسَلِ وَسُوءِ الْكِبَرِ رَبِّ أَعُوذُ بِكَ مِنْ عَذَابٍ فِي النَّارِ وَعَذَابِ فِي الْقَبْرِ',
      english:
      'We have reached the morning and the Dominion belongs to Allah, and all praise is for Allah. There is no deity worthy of worship except Allah, alone, without partner. To Him belongs the dominion and to Him belongs all praise, and He is over all things Omnipotent. My Lord, I ask You for the good of this day and the good of what follows it, and I seek refuge in You from the evil of this day and the evil of what follows it. My Lord, I seek refuge in You from laziness and the hardships of old age. My Lord, I seek refuge in You from the punishment of the Fire and the punishment of the grave.',
      urdu:
      'ہم نے صبح کی اور صبح کے وقت سارا ملک اللہ ہی کا رہا، اور تمام تعریفیں اللہ ہی کے لیے ہیں۔ اللہ کے سوا کوئی معبودِ برحق نہیں، وہ اکیلا ہے، اس کا کوئی شریک نہیں، اسی کی بادشاہت ہے اور اسی کے لیے تعریف ہے، اور وہ ہر چیز پر کامل قدرت رکھتا ہے۔ اے میرے رب! میں تجھ سے اس دن کی خیر اور اس کے بعد کی خیر کا سوال کرتا ہوں، اور میں اس دن کے شر اور اس کے بعد کے شر سے تیری پناہ مانگتا ہوں۔ اے میرے رب! میں سستی اور بڑھاپے کی خرابیوں سے تیری پناہ مانگتا ہوں۔ اے میرے رب! میں دوزخ کے عذاب سے اور قبر کے عذاب سے تیری پناہ مانگتا ہوں۔',
      reference: 'Sahih Muslim 6908',
      fazilatEnglish: 'A comprehensive prophetic morning prayer for general safety, well-being, and seeking refuge from physical and spiritual harms throughout the day.',
      fazilatUrdu: 'دن بھر کی خیر و برکت پانے، اور سستی، برے بڑھاپے، عذابِ قبر و دوزخ سے بچنے کی بہترین مسنون دُعا۔',
      count: 0,
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'm13',
      arabic:
          'يَا حَيُّ يَا قَيُّومُ بِرَحْمَتِكَ أَسْتَغِيْتُ أَصْلِحْ لِي شَأْنِي كُلَّهُ وَلَا تَكِلْنِي إِلَى نَفْسِي طَرْفَةَ عَيْنٍ',
      english:
          'O Ever Living One, O Eternal One, by Your mercy I call on You. Set right all my affairs. Do not place me in charge of my soul even for the blinking of an eye.',
      urdu:
          'اے خود سے زندہ، ہر چیز کو قائم رکھنے والے میں تیری رحمت کے ساتھ تجھ سے مدد مانگتا ہوں۔ درست فرما دے میرے تمام کام اور مجھے پلک جھپکنے کے برابر بھی میرے نفس کے حوالے نہ کرنا۔',
      reference: 'Al-Mustadrak al-Hakim: 2000',
      count: 0,
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'm14',
      arabic:
          'اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَافِيَةَ فِي الدُّنْيَا وَالْآخِرَةِ اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي دِينِي وَدُنْيَايَ وَأَهْلِي وَمَالِي اللَّهُمَّ اسْتُرْ عَوْرَاتِي وَآمِنْ رَوْعَاتِي اللَّهُمَّ احْفَظْنِي مِنْ بَيْنِ يَدَيَّ وَمِنْ خَلْفِي وَعَنْ يَمِينِي وَعَنْ شِمَالِي وَمِنْ فَوْقِي وَأَعُوذُ بِعَظَمَتِكَ أَنْ أُغْتَالَ مِنْ تَحْتِي',
      english:
          'O Allah, I ask You for well being in this world and in the Hereafter. O Allah, I ask You for forgiveness and well being in my religious commitment, my worldly affairs, my family and my wealth. O Allah, conceal my fault and keep me safe from the things I fear. O Allah, protect me from in front and behind, from my right and my left and from above. I seek refuge in Your might from any unexpected harm coming from beneath me',
      urdu:
          'اے اللہ! میں تجھ سے سوال کرتا ہوں عافیت کا دنیا اور آخرت میں، اے اللہ! میں تجھ سے سوال کرتا ہوں معافی اور عافیت کا میرے دین میں اور میری دنیا میں اور میرے گھر والوں میں اور میرے مال میں۔ اے اللہ! پردہ ڈال میری چھپی چیزوں پر، اور امن دے میری گھبراہٹوں کو۔ اے اللہ! میری حفاظت فرما میرے آگے سے اور میرے پیچھے سے اور میرے دائیں سے اور میرے بائیں سے اور میرے اوپر سے۔ اور میں پناہ میں آتا ہوں تیری عظمت کی کہ اچانک نیچے سے ہلاک کر دیا جاؤں۔',
      reference: 'Sunan Abi Dawud: 5074',
      count: 0,
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'm15',
      arabic:
          'اللَّهُمَّ عَالِمَ الْغَيْبِ وَالشَّهَادَةِ فَاطِرَ السَّمَاوَاتِ وَالْأَرْضِ رَبَّ كُلِّ شَيْءٍ وَمَلِيكَهُ أَشْهَدُ أَنْ لَّا إِلَهَ إِلَّا أَنْتَ أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ',
      english:
          'O Allah! Knower of the Unseen and the Seen, Originator of the heavens and the earth, Lord of everything and its Possessor also, I bear witness that there is none worthy of worship except You, I seek refuge in You from the evil of my soul and from the evil of Shaitan and his participation (in my works).',
      urdu:
          'اے اللہ! جاننے والے غیب اور حاضر کے، پیدا کرنے والے آسمانوں اور زمین کو، پالنے والے ہر چیز کے اور مالک بھی، میں گواہی دیتا ہوں کہ نہیں ہے کوئی معبود مگر تو، میں تیری پناہ میں آتا ہوں اپنے نفس کی برائی سے اور شیطان کے شر سے اور اسکے (میرے کاموں میں) شریک ہونے سے۔',
      reference: 'Jami` at-Tirmidhi: 3392',
      count: 0,
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'm16',
      arabic:
          'اللَّهُمَّ أَنْتَ رَبِّي، لَا إِلَهَ إِلَّا أَنْتَ خَلَقْتَنِي وَأَنَا عَبْدُكَ وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ وَأَبُوءُ بِذَنْبِي فَاغْفِرْ لِي فَإِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ',
      english:
          'O Allah! You are my Lord, None has the right to be worshipped but You. You created me and I am Your slave, and I am faithful to my covenant and my promise (to You) as much as I can. I seek refuge with You from all the evil I have done. I acknowledge before You all the blessings You have bestowed upon me, and I confess to You all my sins. So I entreat You to forgive my sins, for nobody can forgive sins except You.',
      urdu:
          'اے اللہ! تو ہی میرا رب ہے، نہیں ہے کوئی معبود مگر تو، تو نے مجھے پیدا کیا، میں تیرا بندہ ہوں اور میں تیرے عہد اور وعدے پر (قائم) ہوں جس قدر میری طاقت ہے، میں تیری پناہ میں آتا ہوں اُس کے شر سے جو میں نے کیا، اپنے آپ پر تیری نعمت کا اقرار کرتا ہوں، اور اپنے گناہ کا اعتراف کرتا ہوں پس مجھے بخش دے کیونکہ نہیں ہے کوئی گناہوں کو بخشنے والا مگر تو۔',
      reference: 'Bukhari: 6306',
      count: 0,
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'm17',
      arabic: 'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ',
      english: 'Glory and praise is to Allah.',
      urdu: 'اللہ پاک ہے اور اپنی تعریف کے ساتھ ہے۔',
      reference: 'Bukhari: 6405, Muslim: 6842, 6843',
      count: 0,
      targetCount: 100,
    ),
    DhikrEntity(
      id: 'm18',
      arabic: 'أَسْتَغْفِرُ اللَّهَ وَأَتُوبُ إِلَيْهِ',
      english: 'I seek Allah’s forgiveness and I turn to Him in repentance.',
      urdu: 'میں اللہ سے مغفرت طلب کرتا ہوں اور میں اُسی کی طرف توبہ کرتا ہو۔',
      reference: 'Bukhari: 6307, Muslim: 6858',
      count: 0,
      targetCount: 100,
    ),
    DhikrEntity(
      id: 'm19',
      arabic: 'حَسْبُنَا اللَّهُ وَنِعْمَ الْوَكِيلُ',
      english:
          'Allah is sufficient for us and He is the Best Disposer of Affairs.',
      urdu: 'ہم نے اللہ پر بھروسہ کیا اور وہی بہترین کارساز ہے۔',
      reference: 'Al-Imran: 173, Bukhari: 4563',
      fazilatEnglish: 'Recited by the Prophet in difficult situations.',
      fazilatUrdu: 'رسول اللہ ﷺ نے مشکل حالات میں یہ کلمات پڑھے۔',
      count: 0,
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'm20',
      arabic: 'اللَّهُمَّ صَلِّ وَسَلِّمْ عَلَى نَبِيِّنَا مُحَمَّدٍ',
      english: 'O Allah, send blessings and peace upon our Prophet Muhammad.',
      urdu: 'اے اللہ! ہمارے نبی محمد ﷺ پر رحمتیں اور سلامتی نازل فرما۔',
      reference: 'Al-Mu\'jam al-Kabir lilt-Tabarani, Hisn al-Muslim 91',
      fazilatEnglish: 'Whoever recites it 10 times in the morning and 10 times in the evening will attain the intercession of the Prophet on the Day of Resurrection.',
      fazilatUrdu: 'جو شخص صبح اور شام 10، 10 مرتبہ درود بھیجے گا، قیامت کے دن اسے رسول اللہ ﷺ کی شفاعت نصیب ہوگی۔',
      count: 0,
      targetCount: 10,
    ),
  ];

  static List<DhikrEntity> eveningAdhkar = [
    DhikrEntity(
      id: 'e1',
      arabic: 'آيَةُ الْكُرْسِي',
      english: 'Ayatul Kursi (2/255)',
      urdu: 'آیت الکرسی',
      reference: 'Sahih al-Bukhari 2311',
      fazilatEnglish: """ who recites Ayat-al-Kursi (Al-Baqara:255) becomes safe
from Shaitan and Jinn and a guard is appointed for his
safety.""",
      fazilatUrdu: """255 پڑھنے والا شیطان اور جنات سے حفوظ ہو
جاتا ہے اور اُسکی حفاظت کیلئے ان ایک محافظ مقرر کر دیا جاتا ہے""",
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'evening_muawwidhat',
      arabic:
          'قُلْ هُوَ اللَّهُ أَحَدٌ، قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ، قُلْ أَعُوذُ بِرَبِّ النَّاسِ',
      english: 'Recitation of the Three Muawwidhat',
      urdu: 'تینوں معوذات کی تلاوت',
      reference: 'Jami` at-Tirmidhi 3575,',
      fazilatEnglish:
          'The recitation of Muawwidhat will suffice you against everything (against Jinn and magic).',
      fazilatUrdu:
          'معوذات کی تلاوت (جنات اور جادو کے خلاف) ہر شے سے کافی ہو جاتی ہے۔ (رات کے وقت ہاتھوں پر پھونک کر جسم پر مسح کرنا سنت ہے - بخاری: 5017)',
      count: 0,
      targetCount: 3,
    ),
    DhikrEntity(
      id: 'e3',
      arabic:
          'لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ',
      english:
          'There is none worthy of worship but Allah alone with no partner or associate, He is the dominion, to Him is praise and He has power over all things.',
      urdu:
          'نہیں کوئی معبود مگر اللہ، وہ اکیلا ہے، نہیں کوئی شریک اُسکا، اُسی کی بادشاہی ہے، اور اسی کے لئے سب تعریفیں ہیں، اور وہ ہر شے پر پوری طرح قدرت رکھتا ہے۔',
      reference: 'Sahih Muslim 6844, Sunan Abi Dawud 5082',
      fazilatEnglish:
          'The one who recites these words gets reward of freeing 4 slaves. And he is guarded against every dangerous thing and Shaitan during the entire day and night. (Note: Reciting 100 times everyday is the best practice - Bukhari: 6403, Muslim: 6842)',
      fazilatUrdu:
          'کلمات پڑھنے والے کو 4 غلام آزاد کرنے کا ثواب ملتا ہے اور تمام دن رات میں ہر خطرناک چیز اور شیطان کے خلاف اُسکا بچاؤ ہو جاتا ہے۔ (نوٹ: ہر روز 100 بار پڑھنا فضل ترین عمل ہے - بخاری: 6403، مسلم: 6842)',
      count: 0,
      targetCount: 10,
    ),
    DhikrEntity(
      id: 'e4',
      arabic:
          'رَضِيتُ بِاللهِ رَبَّا وَ بِالْإِسْلَامِ دِينًا وَبِمُحَمَّدٍ نَّبِيًّا',
      english:
          'We are pleased with Allah as our Lord, Islam as our religion, and Muhammad as our Messenger.',
      urdu:
          'راضی ہوں میں اللہ کے رب ہونے پر، اور اسلام کے دین ہونے پر، اور محمد ﷺ کے نبی ہونے پر۔',
      reference: 'Sunan Abi Dawud 5072, Musnad Ahmad 18990',
      fazilatEnglish:
          'The one who recites these words will surely get the Heaven and Allah will please him on the Day of Judgment. (Recite 3 times in the morning and in the evening.)',
      fazilatUrdu:
          'یہ کلمات پڑھنے والے پر جنت واجب ہو جائیگی اور قیامت والے دن اللہ اسے خوش کر دے گا۔ (3 مرتبہ صبح اور شام)',
      count: 0,
      targetCount: 3,
    ),
    DhikrEntity(
      id: 'e5',
      arabic:
          'بِسْمِ اللهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الْأَرْضِ وَلَا فِي السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ',
      english:
          'In the name of Allah with whose name nothing on earth or in the heaven can cause harm and He is the Hearing, the Knowing.',
      urdu:
          'اللہ کے نام کے ساتھ، جس کے نام کے ساتھ زمین و آسمان میں کوئی چیز نقصان نہیں پہنچا سکتی، اور وہی سننے والا جاننے والا ہے۔',
      reference: 'Sunan Abi Dawud 5088',
      fazilatEnglish:
          'Nothing can harm the person who recites these words nor will any sudden disaster reach him. (Recite 3 times in the morning and in the evening.)',
      fazilatUrdu:
          'یہ کلمات پڑھنے والے کو نہ تو کوئی شے نقصان پہنچا سکتی ہے اور نہ ہی کوئی اچانک ناگہانی مصیبت اُسے پہنچے گی۔ (3 مرتبہ صبح اور شام)',
      count: 0,
      targetCount: 3,
    ),
    DhikrEntity(
      id: 'e6',
      arabic: 'أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ',
      english:
          'I seek refuge (of Allah) in the Perfect Words of Allah from the evil of that which He has created.',
      urdu:
          'میں اللہ کے کلماتِ کاملہ کی پناہ پکڑتا ہوں ہر اس چیز کے شر سے جو اُس نے پیدا کی۔',
      reference: 'Muslim 6880',
      fazilatEnglish:
          'The sting of the poisonous animal will not cause harm to the person who recites these words. (Recite 3 times in the evening.)',
      fazilatUrdu:
          'یہ کلمات پڑھنے والے کو زہریلے جانور کا ڈنگ نقصان نہیں پہنچا سکے گا۔ (3 مرتبہ شام)',
      count: 0,
      targetCount: 3,
    ),
    DhikrEntity(
      id: 'e7',
      arabic:
          'سُبْحَانَ اللهِ وَبِحَمْدِهِ عَدَدَ خَلْقِهِ وَرِضَى نَفْسِهِ وَزِنَةَ عَرْشِهِ وَمِدَادَ كَلِمَاتِهِ',
      english:
          'Glory and praise is to Allah, as much as the number of His creation, as much as pleases Him, as much as the weight of His Throne and as much as the ink of His words.',
      urdu:
          'اللہ پاک ہے اور اپنی تعریف کے ساتھ ہے، اپنی مخلوق کی گنتی کے برابر، اور اپنے نفس کی رضا کے برابر، اور اپنے عرش کے وزن کے برابر، اور اپنے کلمات کی سیاہی کے برابر۔',
      reference: 'Muslim 6913',
      fazilatEnglish:
          'The one who recites these words gets more reward than the person who worships continuously from the Fajr prayer till forenoon. (Recite 3 times in the evening.)',
      fazilatUrdu:
          'یہ کلمات پڑھنے والے کو زیادہ ثواب حاصل ہوتا ہے۔ (3 مرتبہ شام)',
      count: 0,
      targetCount: 3,
    ),
    DhikrEntity(
      id: 'e8',
      arabic:
          'اسْتَغْفِرُ اللهَ الَّذِي لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ وَاتُوبُ إِلَيْهِ',
      english:
          'I seek Allah’s forgiveness. The One besides Whom there is none worthy of worship, the Ever-Living, the Sustainer, and I turn to Him in repentance.',
      urdu:
          'میں اللہ سے مغفرت طلب کرتا ہوں، نہیں کوئی معبود مگر وہ، خود سے زندہ، ہر چیز کو قائم رکھنے والا ہے اور میں اُسی کی طرف توبہ کرتا ہوں۔',
      reference: 'Jami` at-Tirmidhi 3577, Sunan Abi Dawud 1517',
      fazilatEnglish:
          'All sins of the person who recites these words will be forgiven. (Recite 3 times in the evening.)',
      fazilatUrdu:
          'یہ کلمات پڑھنے والے کے سارے گناہ معاف کر دیئے جائیں گے۔ (3 مرتبہ شام)',
      count: 0,
      targetCount: 3,
    ),
    DhikrEntity(
      id: 'e9',
      arabic: 'اللَّهُمَّ أَجِرْنِي مِنَ النَّارِ',
      english: 'O Allah! Save me from Fire.',
      urdu: 'اے اللہ! بچا لے مجھ کو آگ (دوزخ) سے۔',
      reference: 'Sunan Abi Dawud 5079',
      fazilatEnglish:
          'Whoever recites these words at the end of Maghrib prayer before speaking and if he dies that night, he will be free from the fire of Hell. (7 times, immediately after Maghrib prayer.)',
      fazilatUrdu:
          'جو شخص نمازِ مغرب کے بعد گفتگو سے پہلے یہ کلمات پڑھے اور اگر اُسی رات فوت ہو گیا تو دوزخ کی آگ سے آزاد ہوگا۔ (7 مرتبہ مغرب کے فوراً بعد)',
      count: 0,
      targetCount: 7,
    ),
    DhikrEntity(
      id: 'e10',
      arabic:
          'اللَّهُمَّ بِكَ أَمْسَيْنَا وَبِكَ أَصْبَحْنَا وَبِكَ نَحْيَا وَبِكَ نَمُوتُ وَإِلَيْكَ الْمَصِيرُ',
      english:
          'O Allah! By You we have entered the evening, and by You we have entered the morning, and by You we live, and by You we die, and to You is the return.',
      urdu:
          'اے اللہ! ہم نے تیرے نام کے ساتھ شام کی، اور تیری ہی طرف لوٹ کر جانا ہے۔',
      reference: 'Jami` at-Tirmidhi 3391',
      fazilatEnglish:
          'The Messenger of Allah would recite these 6 supplications.',
      fazilatUrdu: 'رسول اللہ ﷺ یہ 6 دُعائیں مانگتے تھے (تمام 1 مرتبہ)',
      count: 0,
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'e11',
      arabic:
          'أَمْسَيْنَا عَلَى فِطْرَةِ الْإِسْلامِ وَعَلَى کَلِمَةِ الْإِخْلَاصِ وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ وَعَلَى مِلَّةِ أَبِيْنَا إِبْرَاهِيمَ حَنِيفًا مُسلِمًا وَمَا کَانَ مِنَ الْمُشْرِكِينَ',
      english:
          'We have entered the evening while we are on the innateness of Islam...',
      urdu:
          'ہم نے شام کی فطرتِ اسلام پر، اور کلمہ اخلاص پر، اور ہمارے نبی محمد ﷺ کے دین پر...',
      reference: 'Musnad Ahmad 15360',
      fazilatEnglish: 'Dhikr of the evening.',
      fazilatUrdu: 'شام کے اذکار میں سے ایک دُعا۔',
      count: 0,
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'e12',
      arabic:
      'أَمْسَيْنَا وَأَمْسَى الْمُلْكُ لِلَّهِ وَالْحَمْدُ لِلَّهِ لَا إِلَهَ إِلَّا اللهُ وَحْدَهُ لَا شَرِیکَ لَهُ ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ ، رَبِّ أَسْأَلُكَ خَيْرَ مَا فِي هَذِهِ اللَّيْلَةِ وَخَيْرَ مَا بَعْدَهَا وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فِي هَذِهِ اللَّيْلَةِ وَشَرِّ مَا بَعْدَهَا رَبِّ أَعُوذُ بِكَ مِنَ الْكَسَلِ وَسُوءِ الْكِبَرِ رَبِّ أَعُوذُ بِكَ مِنْ عَذَابٍ فِي النَّارِ وَعَذَابِ فِي الْقَبْرِ',
      english:
      'We have reached the evening and the Dominion belongs to Allah, and all praise is for Allah. There is no deity worthy of worship except Allah, alone, without partner. To Him belongs the dominion and to Him belongs all praise, and He is over all things Omnipotent. My Lord, I ask You for the good of this night and the good of what follows it, and I seek refuge in You from the evil of this night and the evil of what follows it. My Lord, I seek refuge in You from laziness and the hardships of old age. My Lord, I seek refuge in You from the punishment of the Fire and the punishment of the grave.',
      urdu:
      'ہم نے شام کی اور شام کے وقت سارا ملک اللہ ہی کا رہا، اور تمام تعریفیں اللہ ہی کے لیے ہیں۔ اللہ کے سوا کوئی معبودِ برحق نہیں، وہ اکیلا ہے، اس کا کوئی شریک نہیں، اسی کی بادشاہت ہے اور اسی کے لیے تعریف ہے، اور وہ ہر چیز پر کامل قدرت رکھتا ہے۔ اے میرے رب! میں تجھ سے اس رات کی خیر اور اس کے بعد کی خیر کا سوال کرتا ہوں، اور میں اس رات کے شر اور اس کے بعد کے شر سے تیری پناہ مانگتا ہوں۔ اے میرے رب! میں سستی اور بڑھاپے کی خرابیوں سے تیری پناہ مانگتا ہوں۔ اے میرے رب! میں دوزخ کے عذاب سے اور قبر کے عذاب سے تیری پناہ مانگتا ہوں۔۔',
      reference: 'Sahih Muslim 6908',
      fazilatEnglish: 'A comprehensive prophetic evening prayer for general safety, well-being, and seeking refuge from physical and spiritual harms.',
      fazilatUrdu: 'رات بھر کی خیر و برکت پانے، اور سستی، برے بڑھاپے، عذابِ قبر و دوزخ سے بچنے کی بہترین مسنون دُعا۔',
      count: 0,
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'e13',
      arabic:
          'يَا حَيُّ يَا قَيُّومُ بِرَحْمَتِكَ أَسْتَغِيْتُ أَصْلِحْ لِي شَأْنِي كُلَّهُ وَلَا تَكِلْنِي إِلَى نَفْسِي طَرْفَةَ عَيْنٍ',
      english:
          'O Ever Living One, O Eternal One, by Your mercy I call on You. Set right all my affairs. Do not place me in charge of my soul even for the blinking of an eye.',
      urdu:
          'اے خود سے زندہ، ہر چیز کو قائم رکھنے والے میں تیری رحمت کے ساتھ تجھ سے مدد مانگتا ہوں۔ درست فرما دے میرے تمام کام اور مجھے پلک جھپکنے کے برابر بھی میرے نفس کے حوالے نہ کرنا۔',
      reference: 'Al-Mustadrak al-Hakim: 2000',
      count: 0,
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'e14',
      arabic:
          'اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَافِيَةَ فِي الدُّنْيَا وَالْآخِرَةِ اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي دِينِي وَدُنْيَايَ وَأَهْلِي وَمَالِي اللَّهُمَّ اسْتُرْ عَوْرَاتِي وَآمِن| رَوْعَاتِي اللَّهُمَّ احْفَظْنِي مِنْ بَيْنِ يَدَيَّ وَمِنْ خَلْفِي وَعَنْ يَمِينِي وَعَنْ شِمَالِي وَمِنْ فَوْقِي وَأَعُوذُ بِعَظَمَتِكَ أَنْ أُغْتَالَ مِنْ تَحْتِي',
      english:
          'O Allah, I ask You for well being in this world and in the Hereafter...',
      urdu: 'اے اللہ! میں تجھ سے سوال کرتا ہوں عافیت کا دنیا اور آخرت میں...',
      reference: 'Sunan Abi Dawud: 5074',
      count: 0,
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'e15',
      arabic:
          'اللَّهُمَّ عَالِمَ الْغَيْبِ وَالشَّهَادَةِ فَاطِرَ السَّمَاوَاتِ وَالْأَرْضِ رَبَّ كُلِّ شَيْءٍ وَمَلِيكَهُ أَشْهَدُ أَنْ لَّا إِلَهَ إِلَّا أَنْتَ أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ',
      english: 'O Allah! Knower of the Unseen and the Seen...',
      urdu:
          'اے اللہ! جاننے والے غیب اور حاضر کے، پیدا کرنے والے آسمانوں اور زمین کو...',
      reference: 'Jami` at-Tirmidhi: 3392',
      count: 0,
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'e16',
      arabic:
          'اللَّهُمَّ أَنْتَ رَبِّي، لَا إِلَهَ إِلَّا أَنْتَ خَلقتَنِي وَأَنَا عَبْدُكَ وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ وَأَبُوءُ بِذَنْبِي فَاغْفِرْ لِي فَإِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ',
      english: 'O Allah! You are my Lord...',
      urdu: 'اے اللہ! تو ہی میرا رب ہے، نہیں ہے کوئی معبود مگر تو...',
      reference: 'Bukhari: 6306',
      count: 0,
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'e17',
      arabic: 'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ',
      english: 'Glory and praise is to Allah.',
      urdu: 'اللہ پاک ہے اور اپنی تعریف کے ساتھ ہے۔',
      reference: 'Bukhari: 6405',
      count: 0,
      targetCount: 100,
    ),
    DhikrEntity(
      id: 'e18',
      arabic: 'أَسْتَغْفِرُ اللَّهَ وَأَتُوبُ إِلَيْهِ',
      english: 'I seek Allah’s forgiveness and I turn to Him in repentance.',
      urdu: 'میں اللہ سے مغفرت طلب کرتا ہوں اور میں اُسی کی طرف توبہ کرتا ہوں۔',
      reference: 'Bukhari: 6307, Muslim: 6858',
      count: 0,
      targetCount: 100,
    ),
    DhikrEntity(
      id: 'e19',
      arabic: 'حَسْبُنَا اللَّهُ وَنِعْمَ الْوَكِيلُ',
      english:
          'Allah is sufficient for us and He is the Best Disposer of Affairs.',
      urdu: 'ہم نے اللہ پر بھروسہ کیا اور وہی بہترین کارساز ہے۔',
      reference: 'Al-Imran: 173, Bukhari: 4563',
      fazilatEnglish: 'Recited by the Prophet in difficult situations.',
      fazilatUrdu: 'رسول اللہ ﷺ نے مشکل حالات میں یہ کلمات پڑھے۔',
      count: 0,
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'e20',
      arabic: 'اللَّهُمَّ صَلِّ وَسَلِّمْ عَلَى نَبِيِّنَا مُحَمَّدٍ',
      english: 'Darood Sharif (10 times).',
      urdu: 'درود شریف (10 مرتبہ شام)',
      reference: 'Majma` az-Zawa\'id: 17022',
      fazilatEnglish: 'Deserves intercession of the Prophet.',
      fazilatUrdu: 'پڑھنے والا شخص شفاعت کا حقدار ہو جاتا ہے۔',
      count: 0,
      targetCount: 10,
    ),
  ];

  static List<DhikrEntity> sleepingAdhkar = [

// ── SURAHS ──────────
    // ── SURAHS ──────────

    DhikrEntity(
      id: 'sleep_surah_mulk',
      arabic: 'سُورَةُ الْمُلْك',
      english: 'Recite 1 time. (Surah Index: 67)',
      urdu: 'صرف 1 بار پڑھنا ہے۔ (سورت نمبر: 67)',
      reference: 'Sunan Abu Dawud: 1400 | Jami at-Tirmidhi: 2891',
      fazilatEnglish: 'Intercedes for its reciter until he is forgiven. The Prophet (ﷺ) never slept without reciting it.',
      fazilatUrdu: 'قیامت کے دن اپنے پڑھنے والے کی سفارش کرے گی یہاں تک کہ اسے بخش دیا جائے۔ نبی ﷺ اسے پڑھے بغیر نہیں سوتے تھے۔',
      count: 0,
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'sleep_surah_sajda',
      arabic: 'سُورَةُ السَّجْدَة',
      english: 'Recite 1 time. (Surah Index: 32)',
      urdu: 'صرف 1 بار پڑھنا ہے۔ (سورت نمبر: 32)',
      reference: 'Jami at-Tirmidhi: 2892 )',
      fazilatEnglish: 'The Prophet (ﷺ) would not sleep until he recited Surah As-Sajdah. It contains Laylat al-Qadr blessings.',
      fazilatUrdu: 'نبی ﷺ سورۃ السجدہ پڑھے بغیر نہیں سوتے تھے۔ اس میں شب قدر کی برکات ہیں۔',
      count: 0,
      targetCount: 1,
    ),
    DhikrEntity(
      id: 'sleep_surah_waqia',
      arabic: 'سُورَةُ الْوَاقِعَة',
      english: 'Recite 1 time. (Surah Index: 56)',
      urdu: 'صرف 1 بار پڑھنا ہے۔ (سورت نمبر: 56)',
      reference: 'Shu\'ab al-Iman, Al-Bayhaqi: 2269 (Hasan)',
      fazilatEnglish: 'Whoever recites Surah Al-Waqi\'ah every night will never be afflicted by poverty.',
      fazilatUrdu: 'جو ہر رات سورۃ الواقعہ پڑھے، اسے کبھی فقر (محتاجی) نہیں آئے گا۔',
      count: 0,
      targetCount: 1,
    ),

    DhikrEntity(
      id: 'sleep_surah_ikhlas_falaq_nas',
      arabic: 'سُورَةُ الإِخْلَاصِ \n سُورَةُ الْفَلَقِ \n سُورَةُ النَّاسِ', // معوذات
      english: 'Recitation of Surah Al-Ikhlas, Surah Al-Falaq, and Surah An-Nas.',
      urdu: 'سورۃ الاخلاص، سورۃ الفلق اور سورۃ الناس کی تلاوت۔',
      reference: 'Sunan Abu Dawud: 5056 ',
      fazilatEnglish: 'Recite each 3 times, blow into palms, and wipe over the entire body starting from the head. Sufficient protection for everything.',
      fazilatUrdu: 'ہر ایک تین مرتبہ پڑھ کر ہتھیلیوں میں پھونکیں اور سر سے پاؤں تک جسم پر پھیریں۔ ہر چیز سے حفاظت کے لیے کافی ہے۔',
      count: 0,
      targetCount: 3,
    ),
    // سورۃ البقرہ کی آخری دو آیات کا نیا مستند آبجیکٹ
    DhikrEntity(
      id: 'sleep_surah_baqarah_last_two_verses',
      arabic: 'آمَنَ الرَّسُولُ بِمَا أُنْزِلَ إِلَيْهِ مِنْ رَبِّهو وَالْمُؤْمِنُونَ ۚ كُلٌّ آمَنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِنْ رُسُلِهِ ۚ وَقَالُوا سَمِعْنَا وَأَطَعْنَا ۖ غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ ﴿٢٨٥﴾ لَا يُكَلِّفُ اللَّهُ نَفْسًا إِلَّا وُسْعَهَا ۚ لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ ۗ رَبَّنَا لَا تُؤَاخِذْنَا إِنْ نَسِينَا أَوْ أَخْطَأْنَا ۚ رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِنْ قَبْلِنَا ۚ رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ ۖ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا ۚ أَنْتَ مَوْلَانَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ',
      english: '',
      urdu: '',
      reference: 'Sahih al-Bukhari: 5009 ',
      fazilatEnglish: 'The Prophet (ﷺ) said: "Whoever recites the last two verses of Surat al-Baqarah at night, it is sufficient for him."',
      fazilatUrdu: 'رسول اللہ ﷺ نے فرمایا: "جو شخص رات کے وقت سورۃ البقرہ کی آخری دو آیتیں پڑھ لے گا، وہ اسے (ہر آفت اور شر سے) بچانے کے لیے کافی ہو جائیں گی۔"',
      count: 0,
      targetCount: 1, // رات میں صرف ایک بار پڑھنا مسنون ہے
    ),

    // ── TASBIH FATIMAH ────────────────────────────────────────────
    DhikrEntity(
      id: 'sleep_tasbih_fatimah_subhan',
      arabic: 'سُبْحَانَ اللَّهِ',
      english: '',
      urdu: '',
      reference: 'Sahih al-Bukhari: 3113 ',
      fazilatEnglish:
      'Tasbih Fatimah — recite SubhanAllah 33 times, Alhamdulillah 33 times, '
          'and Allahu Akbar 34 times before sleeping. Better than a servant for you.',
      fazilatUrdu:
      'تسبیح فاطمہ — سونے سے پہلے 33 بار سبحان اللہ، 33 بار الحمدللہ '
          'اور 34 بار اللہ اکبر پڑھیں۔ یہ خادم سے بہتر ہے۔',
      targetCount: 33,
    ),
    DhikrEntity(
      id: 'sleep_tasbih_fatimah_alhamd',
      arabic: 'الْحَمْدُ لِلَّهِ',
      english: '',
      urdu: '',
      reference: 'Sahih al-Bukhari: 3113 ',
      fazilatEnglish: 'Part of Tasbih Fatimah — recite 33 times before sleeping.',
      fazilatUrdu: 'تسبیح فاطمہ کا حصہ — سونے سے پہلے 33 مرتبہ پڑھیں۔',
      targetCount: 33,
    ),
    DhikrEntity(
      id: 'sleep_tasbih_fatimah_akbar',
      arabic: 'اللَّهُ أَكْبَرُ',
      english: '',
      urdu: '',
      reference: 'Sahih al-Bukhari: 3113 ',
      fazilatEnglish: 'Part of Tasbih Fatimah — recite 34 times before sleeping.',
      fazilatUrdu: 'تسبیح فاطمہ کا حصہ — سونے سے پہلے 34 مرتبہ پڑھیں۔',
      targetCount: 34,
    ),

    DhikrEntity(
      id: 's1',
      arabic:
      'بِاسْمِكَ رَبِّي وَضَعْتُ جَنْبِي، وَبِكَ أَرْفَعُهُ، فَإِنْ أَمْسَكْتَ نَفْسِي فَارْحَمْهَا، وَإِنْ أَرْسَلْتَهَا فَاحْفَظْهَا بِمَا تَحْفَظُ بِهِ عِبَادَكَ الصَّالِحِينَ',
      english: '',
      urdu: '',
      reference: 'Sahih al-Bukhari: 6320 ',
      fazilatEnglish: 'Seeking Allah\'s protection and mercy during sleep.',
      fazilatUrdu: 'سوتے وقت اللہ کی حفاظت اور رحمت طلب کرنے کی دعا۔',
      targetCount: 1,
    ),
    DhikrEntity(
      id: 's2',
      arabic: 'اللَّهُمَّ قِنِي عَذَابَكَ يَوْمَ تَبْعَثُ عِبَادَكَ',
      english: '',
      urdu: '',
      reference: 'Sunan Abu Dawud: 5045',
      fazilatEnglish: 'Protection from the punishment of the Day of Resurrection.',
      fazilatUrdu: 'قیامت کے دن کے عذاب سے بچنے کی دعا۔',
      targetCount: 3,
    ),
    DhikrEntity(
      id: 's3',
      arabic: 'بِاسْمِكَ اللَّهُمَّ أَمُوتُ وَأَحْيَا',
      english: '',
      urdu: '',
      reference: 'Sahih al-Bukhari: 6312 ',
      fazilatEnglish: 'Acknowledging life and death in Allah\'s name before sleep.',
      fazilatUrdu: 'سونے سے پہلے اللہ کے نام کے ساتھ جینے اور مرنے کا اعتراف۔',
      targetCount: 1,
    ),

    DhikrEntity(
      id: 's4',
      arabic:
      'اللَّهُمَّ أَسْلَمْتُ نَفْسِي إِلَيْكَ، وَفَوَّضْتُ أَمْرِي إِلَيْكَ، '
          'وَوَجَّهْتُ وَجْهِي إِلَيْكَ، وَأَلْجَأْتُ ظَهْرِي إِلَيْكَ، '
          'رَغْبَةً وَرَهْبَةً إِلَيْكَ، لَا مَلْجَأَ وَلَا مَنْجَا مِنْكَ إِلَّا إِلَيْكَ، '
          'آمَنْتُ بِكِتَابِكَ الَّذِي أَنْزَلْتَ، وَبِنَبِيِّكَ الَّذِي أَرْسَلْتَ',
      english: '',
      urdu: '',
      reference: 'Sahih al-Bukhari: 6313',
      fazilatEnglish:
      'Whoever says this and dies that night dies upon the Fitrah (natural disposition of Islam).',
      fazilatUrdu:
      'جو یہ پڑھ کر سوئے اور اسی رات انتقال ہو جائے تو وہ فطرت (اسلام) پر مرا۔',
      targetCount: 1,
    ),
    DhikrEntity(
      id: 's5',
      arabic:
      'اللَّهُمَّ خَلَقْتَ نَفْسِي وَأَنْتَ تَتَوَفَّاهَا، لَكَ مَمَاتُهَا وَمَحْيَاهَا، '
          'إِنْ أَحْيَيْتَهَا فَاحْفَظْهَا، وَإِنْ أَمَتَّهَا فَاغْفِرْ لَهَا. '
          'اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَافِيَةَ',
      english: '',
      urdu: '',
      reference: 'Sahih Muslim: 2712',
      fazilatEnglish:
      'A comprehensive dua acknowledging Allah\'s complete authority over life and death, and asking for His protection and forgiveness.',
      fazilatUrdu:
      'زندگی اور موت پر اللہ کے مکمل اختیار کا اعتراف اور اس کی حفاظت و مغفرت طلب کرنے کی جامع دعا۔',
      targetCount: 1,
    ),

    DhikrEntity(
      id: 's7',
      arabic: 'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْكُفْرِ وَالْفَقْرِ، وَأَعُوذُ بِكَ مِنْ عَذَابِ الْقَبْرِ، لَا إِلَهَ إِلَّا أَنْتَ',
      english: '',
      urdu: '',
      reference: 'Sunan Abu Dawud: 5090',
      fazilatEnglish:
      'Seeking refuge from three great trials: disbelief, poverty, and punishment of the grave.',
      fazilatUrdu:
      'تین بڑی آزمائشوں سے پناہ: کفر، فقر اور عذاب قبر۔',
      targetCount: 3,
    ),
    DhikrEntity(
      id: 's8',
      arabic:
      'اللَّهُمَّ رَبَّ السَّمَاوَاتِ وَرَبَّ الْأَرْضِ وَرَبَّ الْعَرْشِ الْعَظِيمِ، '
          'رَبَّنَا وَرَبَّ كُلِّ شَيْءٍ، فَالِقَ الْحَبِّ وَالنَّوَى، '
          'مُنْزِلَ التَّوْرَاةِ وَالْإِنْجِيلِ وَالْقُرْآنِ، '
          'أَعُوذُ بِكَ مِنْ شَرِّ كُلِّ ذِي شَرٍّ أَنْتَ آخِذٌ بِنَاصِيَتِهِ، '
          'أَنْتَ الْأَوَّلُ فَلَيْسَ قَبْلَكَ شَيْءٌ، وَأَنْتَ الْآخِرُ فَلَيْسَ بَعْدَكَ شَيْءٌ، '
          'وَأَنْتَ الظَّاهِرُ فَلَيْسَ فَوْقَكَ شَيْءٌ، وَأَنْتَ الْبَاطِنُ فَلَيْسَ دُونَكَ شَيْءٌ، '
          'اقْضِ عَنَّا الدَّيْنَ وَأَغْنِنَا مِنَ الْفَقْرِ',
      english: '',
      urdu: '',
      reference: 'Sahih Muslim: 2713',
      fazilatEnglish:
      'A comprehensive dua recited by the Prophet (ﷺ) before sleeping, affirming Allah\'s absolute dominion and seeking refuge from all evil.',
      fazilatUrdu:
      'نبی کریم ﷺ کی سونے سے پہلے کی جامع دعا جو اللہ کی مکمل بادشاہت کا اعتراف اور ہر شر سے پناہ ہے۔',
      targetCount: 1,
    ),
    DhikrEntity(
      id: 's9',
      arabic: 'الْحَمْدُ لِلَّهِ الَّذِي أَطْعَمَنَا وَسَقَانَا، وَكَفَانَا، وَآوَانَا، فَكَمْ مِمَّنْ لَا كَافِيَ لَهُ وَلَا مُؤْوِيَ',
      english: '',
      urdu: '',
      reference: 'Sahih Muslim: 2715',
      fazilatEnglish:
      'Expressing gratitude to Allah for His countless blessings before sleeping.',
      fazilatUrdu:
      'سونے سے پہلے اللہ کی بے شمار نعمتوں پر شکر ادا کرنے کی دعا۔',
      targetCount: 1,
    ),
    DhikrEntity(
      id: 's10',
      arabic: 'اللَّهُمَّ بِاسْمِكَ أَحْيَا وَأَمُوتُ',
      english: '',
      urdu: '',
      reference: 'Sahih al-Bukhari: 6312',
      fazilatEnglish:
      'The Prophet (ﷺ) said this when going to sleep, completely entrusting his life to Allah.',
      fazilatUrdu:
      'نبی کریم ﷺ سوتے وقت یہ پڑھتے تھے، اپنی زندگی مکمل طور پر اللہ کے سپرد کرتے ہوئے۔',
      targetCount: 1,
    ),
  ];

  static List<AdhkarCategory> categories = [
    AdhkarCategory(
      id: 'morning',
      titleEn: 'Morning Adhkar',
      dhikrs: morningAdhkar,
    ),
    AdhkarCategory(
      id: 'evening',
      titleEn: 'Evening Adhkar',
      dhikrs: eveningAdhkar,
    ),
    AdhkarCategory(
      id: 'sleeping',
      titleEn: 'Sleeping Adhkar',
       dhikrs: sleepingAdhkar,
    ),
  ];
}
