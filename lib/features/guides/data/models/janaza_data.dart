import '../../domain/entities/guide_step.dart';

class JanazaData {
  static List<GuideStep> getAdultSteps(bool isMan) {
    return [
      GuideStep(
        stepNumber: "1",
        titleEn: "Intention (Niyyah)",
        titleUr: "نمازِ جنازہ کی نیت",
        contentEn: "Make the intention in your heart: 'I intend to pray the Janaza prayer for the sake of Allah and as a supplication for the deceased.'",
        contentUr: "دل میں نیت کریں: 'میں اللہ کی رضا کے لیے اس میت کی نمازِ جنازہ پڑھنے کی نیت کرتا ہوں، جو کہ ایک دعا ہے۔'",
        reference: "Fatawa Hindiyyah: 1/164",
      ),
      GuideStep(
        stepNumber: "2",
        titleEn: "First Takbeer & Recitation",
        titleUr: "پہلی تکبیر اور ثناء/فاتحہ",
        contentEn: "Say 'Allahu Akbar' and fold your hands. Recite 'Sana' or 'Surah Al-Fatihah' (both are authentic practices from the Sunnah):",
        contentUr: "ہاتھ اٹھا کر 'اللہ اکبر' کہیں اور ہاتھ باندھ کر ثناء (یا سنت کے مطابق سورۃ الفاتحہ) پڑھیں:",
        arabic: "سُبْحَانَكَ اللَّهُمَّ وَبِحَمْدِكَ، وَتَبَارَكَ اسْمُكَ، وَتَعَالَى جَدُّكَ، وَجَلَّ ثَنَاؤُكَ، وَلَا إِلَهَ غَيْرُكَ",
        translationEn: "Glory be to You O Allah, and praise be to You, and blessed is Your name, and exalted is Your Majesty, and there is no god but You.",
        translationUr: "پاک ہے تو اے اللہ! اور تیری ہی تعریف ہے، اور تیرا نام برکت والا ہے، اور تیری بزرگی بلند ہے، اور تیری ثنا بہت بڑی ہے، اور تیرے سوا کوئی معبود نہیں۔",
        reference: "Sunan Abu Dawud: 775, Sahih Bukhari: 1335",
      ),
      GuideStep(
        stepNumber: "3",
        titleEn: "Second Takbeer & Durood",
        titleUr: "دوسری تکبیر اور درود شریف",
        contentEn: "Say 'Allahu Akbar' (without raising hands) and recite 'Durood-e-Ibrahim':",
        contentUr: "دوسری بار 'اللہ اکبر' کہیں (ہاتھ اٹھائے بغیر) اور درودِ ابراہیم پڑھیں:",
        arabic: "اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ، اللَّهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ",
        translationEn: "O Allah, let Your Peace come upon Muhammad and the family of Muhammad, as you have brought peace to Ibrahim and his family. Truly, You are Praiseworthy and Glorious. O Allah, bless Muhammad and the family of Muhammad, as you have blessed Ibrahim and his family. Truly, You are Praiseworthy and Glorious.",
        translationUr: "اے اللہ! محمد ﷺ اور ان کی آل پر رحمتیں نازل فرما، جس طرح تو نے ابراہیم ؑ اور ان کی آل پر رحمتیں نازل فرمائیں، بے شک تو تعریف کے لائق اور بڑی شان والا ہے۔ اے اللہ! محمد ﷺ اور ان کی آل پر برکتیں نازل فرما، جس طرح تو نے ابراہیم ؑ اور ان کی آل پر برکتیں نازل فرمائیں، بے شک تو تعریف کے لائق اور بڑی شان والا ہے۔",
        reference: "Sahih Bukhari: 3370",
      ),
      GuideStep(
        stepNumber: "4",
        titleEn: "Third Takbeer & Dua for Deceased",
        titleUr: "تیسری تکبیر اور میت کے لیے دعا",
        contentEn: "Say 'Allahu Akbar' and recite the specific supplication for the deceased:",
        contentUr: "تیسری بار 'اللہ اکبر' کہیں اور میت کے لیے یہ مخصوص دعا پڑھیں:",
        arabic: "اللَّهُمَّ اغْفِرْ لِحَيِّنَا وَمَيِّتِنَا وَشَاهِدِنَا وَغَائِبِنَا وَصَغِيرِنَا وَكَبِيرِنَا وَذَكَرِنَا وَأُنْثَانَا، اللَّهُمَّ مَنْ أَحْيَيْتَهُ مِنَّا فَأَهْيِهِ عَلَى الْإِسْلَامِ، وَمَنْ تَوَفَّيْتَهُ مِنَّا فَتَوَفَّهُ عَلَى الْإِيمَانِ",
        translationEn: "O Allah, forgive our living and our dead, those present and those absent, our young and our old, our males and our females. O Allah, whomsoever among us You keep to live, then let him live on Islam, and whomsoever among us You cause to die, then let him die on Iman.",
        translationUr: "اے اللہ! ہمارے ہر زندہ اور مردہ، حاضر اور غائب، چھوٹے اور بڑے، اور مرد اور عورت کی مغفرت فرما۔ اے اللہ! ہم میں سے تو جس کو زندہ رکھے اسے اسلام پر زندہ رکھ اور جسے موت دے اسے ایمان پر موت دے۔",
        reference: "Sunan Tirmidhi: 1024, Abu Dawud: 3201",
      ),
      GuideStep(
        stepNumber: "5",
        titleEn: "Fourth Takbeer & Salam",
        titleUr: "چوتھی تکبیر اور سلام",
        contentEn: "Say 'Allahu Akbar' and then perform Salam to the right and then to the left (some scholars say only to the right is also sufficient).",
        contentUr: "چوتھی بار 'اللہ اکبر' کہیں اور پھر دائیں اور بائیں طرف سلام پھیر دیں۔",
        reference: "Sahih Muslim: 962",
      ),
    ];
  }

  static List<GuideStep> getChildSteps(bool isBoy) {
    return [
      GuideStep(
        stepNumber: "1",
        titleEn: "Intention (Niyyah)",
        titleUr: "نابالغ کے جنازے کی نیت",
        contentEn: "Make the intention in your heart: 'I intend to pray Janaza for this child for the sake of Allah.'",
        contentUr: "دل میں نیت کریں کہ میں اس نابالغ بچے/بچی کی نمازِ جنازہ اللہ کی رضا کے لیے پڑھتا ہوں۔",
        reference: "Fatawa Hindiyyah",
      ),
      GuideStep(
        stepNumber: "2",
        titleEn: "First Takbeer",
        titleUr: "پہلی تکبیر",
        contentEn: "Say 'Allahu Akbar' and fold your hands. Recite 'Sana' (or Surah Al-Fatihah):",
        contentUr: "ہاتھ اٹھا کر 'اللہ اکبر' کہیں اور ہاتھ باندھ کر ثناء (یا سورۃ الفاتحہ) پڑھیں:",
        arabic: "سُبْحَانَكَ اللَّهُمَّ وَبِحَمْدِكَ، وَتَبَارَكَ اسْمُكَ، وَتَعَالَى جَدُّكَ، وَجَلَّ ثَنَاؤُكَ، وَلَا إِلَهَ غَيْرُكَ",
        reference: "Sunan Abu Dawud: 775",
      ),
      GuideStep(
        stepNumber: "3",
        titleEn: "Second Takbeer",
        titleUr: "دوسری تکبیر",
        contentEn: "Say 'Allahu Akbar' and recite 'Durood-e-Ibrahim'.",
        contentUr: "دوسری بار 'اللہ اکبر' کہیں اور درودِ ابراہیم پڑھیں۔",
        arabic: "اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ...",
        reference: "Sahih Bukhari: 3370",
      ),
      GuideStep(
        stepNumber: "4",
        titleEn: "Third Takbeer & Child Dua",
        titleUr: "تیسری تکبیر اور مخصوص دعا",
        contentEn: "Say 'Allahu Akbar' and recite the specific dua for a child:",
        contentUr: "تیسری بار 'اللہ اکبر' کہیں اور نابالغ کے لیے یہ دعا پڑھیں:",
        arabic: isBoy 
          ? "اللَّهُمَّ اجْعَلْهُ لَنَا فَرَطًا، وَاجْعَلْهُ لَنَا أَجْرًا وَذُخْرًا، وَاجْعَلْهُ لَنَا شَافِعًا وَمُشَفَّعًا" 
          : "اللَّهُمَّ اجْعَلْهَا لَنَا فَرَطًا، وَاجْعَلْهَا لَنَا أَجْرًا وَذُخْرًا، وَاجْعَلْهَا لَنَا شَافِعَةً وَمُشَفَّعَةً",
        translationEn: isBoy
          ? "O Allah, make him for us a precursor, and make him for us a reward and a treasure, and make him for us an intercessor whose intercession is accepted."
          : "O Allah, make her for us a precursor, and make her for us a reward and a treasure, and make her for us an intercessor whose intercession is accepted.",
        translationUr: isBoy 
          ? "اے اللہ! اس بچے کو ہمارے لیے آگے پہنچ کر سامانِ راحت بننے والا بنا، اور اس کو ہمارے لیے اجر اور ذخیرہ بنا، اور اس کو ہمارے لیے شفاعت کرنے والا بنا جس کی شفاعت قبول کی جائے۔" 
          : "اے اللہ! اس بچی کو ہمارے لیے آگے پہنچ کر سامانِ راحت بننے والی بنا، اور اس کو ہمارے لیے اجر اور ذخیرہ بنا، اور اس کو ہمارے لیے شفاعت کرنے والی بنا جس کی شفاعت قبول کی جائے۔" ,
        reference: "Fatawa Alamgiri: 1/164",
      ),
      GuideStep(
        stepNumber: "5",
        titleEn: "Fourth Takbeer & Salam",
        titleUr: "چوتھی تکبیر اور سلام",
        contentEn: "Say 'Allahu Akbar' and perform Salam.",
        contentUr: "چوتھی بار 'اللہ اکبر' کہیں اور سلام پھیر دیں۔",
        reference: "Sahih Muslim: 962",
      ),
    ];
  }
}
