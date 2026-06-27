import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/app_colors.dart';
import '../../../../core/services/settings_controller.dart';

class JanazaDetailScreen extends ConsumerWidget {
  final bool isAdult;
  const JanazaDetailScreen({super.key, required this.isAdult});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final settings = ref.watch(settingsControllerProvider);
    final isUrdu = settings.language == 'ur';

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            isUrdu 
              ? (isAdult ? "نمازِ جنازہ (بالغ)" : "نمازِ جنازہ (نابالغ)")
              : (isAdult ? "Adult Funeral Prayer" : "Child Funeral Prayer"),
            style: isUrdu ? GoogleFonts.notoNastaliqUrdu(fontWeight: FontWeight.bold, fontSize: 18) : const TextStyle(fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            indicatorColor: AppColors.primaryTeal,
            labelColor: AppColors.primaryTeal,
            unselectedLabelColor: Colors.grey,
            labelStyle: isUrdu ? GoogleFonts.notoNastaliqUrdu(fontWeight: FontWeight.bold, fontSize: 13) : const TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Tab(text: isUrdu 
                ? (isAdult ? "مرد کے لیے" : "لڑکے کے لیے")
                : (isAdult ? "FOR MAN" : "FOR BOY")),
              Tab(text: isUrdu 
                ? (isAdult ? "عورت کے لیے" : "لڑکی کے لیے")
                : (isAdult ? "FOR WOMAN" : "FOR GIRL")),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _JanazaContent(type: isAdult ? _JanazaType.adultMan : _JanazaType.boy, isUrdu: isUrdu),
            _JanazaContent(type: isAdult ? _JanazaType.adultWoman : _JanazaType.girl, isUrdu: isUrdu),
          ],
        ),
      ),
    );
  }
}

enum _JanazaType { adultMan, adultWoman, boy, girl }

class _JanazaContent extends StatelessWidget {
  final _JanazaType type;
  final bool isUrdu;
  const _JanazaContent({required this.type, required this.isUrdu});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: Column(
        crossAxisAlignment: isUrdu ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          _buildStep(
            context,
            step: "1",
            titleEn: "The Intention (Niyyah)",
            titleUr: "نمازِ جنازہ کی نیت",
            contentEn: "Make the intention in your heart: 'I intend to pray the Janaza prayer for the sake of Allah and as a supplication for the deceased.'",
            contentUr: "دل میں نیت کریں: 'میں اللہ کی رضا کے لیے اس میت کی نمازِ جنازہ پڑھنے کی نیت کرتا ہوں، جو کہ ایک دعا ہے۔'",
            ref: "Fatawa Hindiyyah",
          ),
          _buildStep(
            context,
            step: "2",
            titleEn: "First Takbeer & Sana",
            titleUr: "پہلی تکبیر اور ثناء",
            contentEn: "Say 'Allahu Akbar', fold your hands and recite:",
            contentUr: "ہاتھ اٹھا کر 'اللہ اکبر' کہیں اور ہاتھ باندھ کر یہ پڑھیں:",
            arabic: "سُبْحَانَكَ اللَّهُمَّ وَبِحَمْدِكَ، وَتَبَارَكَ اسْمُكَ، وَتَعَالَى جَدُّكَ، وَجَلَّ ثَنَاؤُكَ، وَلَا إِلَهَ غَيْرُكَ",
            translationEn: "Glory be to You O Allah, and praise be to You, and blessed is Your name, and exalted is Your Majesty, and there is no god but You.",
            translationUr: "پاک ہے تو اے اللہ! اور تیری ہی تعریف ہے، اور تیرا نام برکت والا ہے، اور تیری بزرگی بلند ہے، اور تیری ثنا بہت بڑی ہے، اور تیرے سوا کوئی معبود نہیں۔",
            ref: "Sunan Abu Dawud: 775",
          ),
          _buildStep(
            context,
            step: "3",
            titleEn: "Second Takbeer & Durood",
            titleUr: "دوسری تکبیر اور درود شریف",
            contentEn: "Say 'Allahu Akbar' (without raising hands) and recite 'Durood-e-Ibrahim':",
            contentUr: "دوسری بار 'اللہ اکبر' کہیں (ہاتھ اٹھائے بغیر) اور درودِ ابراہیم پڑھیں:",
            arabic: "اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ، اللَّهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ",
            translationEn: "O Allah, let Your Peace come upon Muhammad and the family of Muhammad, as you have brought peace to Ibrahim and his family...",
            translationUr: "اے اللہ! محمد ﷺ اور ان کی آل پر رحمتیں نازل فرما، جس طرح تو نے ابراہیم ؑ اور ان کی آل پر رحمتیں نازل فرمائیں…",
            ref: "Sahih Bukhari: 3370",
          ),
          _buildStep(
            context,
            step: "4",
            titleEn: "Third Takbeer & Dua",
            titleUr: "تیسری تکبیر اور مخصوص دعا",
            contentEn: "Say 'Allahu Akbar' and recite the specific supplication for the deceased:",
            contentUr: "تیسری بار 'اللہ اکبر' کہیں اور میت کے لیے یہ دعا پڑھیں:",
            arabic: _getThirdTakbeerArabic(type),
            translationEn: _getThirdTakbeerTranslationEn(type),
            translationUr: _getThirdTakbeerUrdu(type),
            ref: _getThirdTakbeerRef(type),
          ),
          _buildStep(
            context,
            step: "5",
            titleEn: "Fourth Takbeer & Salam",
            titleUr: "چوتھی تکبیر اور سلام",
            contentEn: "Say 'Allahu Akbar' and then perform Salam to the right and then to the left.",
            contentUr: "چوتھی بار 'اللہ اکبر' کہیں اور پھر دائیں اور بائیں طرف سلام پھیر دیں۔",
            ref: "Sahih Muslim: 962",
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _buildStep(
    BuildContext context, {
    required String step,
    required String titleEn,
    required String titleUr,
    required String contentEn,
    required String contentUr,
    String? arabic,
    String? translationEn,
    String? translationUr,
    required String ref,
  }) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    return Container(
      margin: const EdgeInsets.only(bottom: 32),
      child: Column(
        crossAxisAlignment: isUrdu ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: isUrdu ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              if (!isUrdu) _buildStepCircle(step),
              const SizedBox(width: 12),
              Text(
                isUrdu ? titleUr : titleEn,
                style: isUrdu 
                  ? GoogleFonts.notoNastaliqUrdu(fontSize: 16, fontWeight: FontWeight.bold, height: 1.5)
                  : const TextStyle(fontSize: 17, fontWeight: FontWeight.bold, letterSpacing: -0.5),
              ),
              const SizedBox(width: 12),
              if (isUrdu) _buildStepCircle(step),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.only(left: 12, right: 12),
            decoration: BoxDecoration(
              border: Border(
                left: !isUrdu ? BorderSide(color: AppColors.primaryTeal.withOpacity(0.3), width: 2) : BorderSide.none,
                right: isUrdu ? BorderSide(color: AppColors.primaryTeal.withOpacity(0.3), width: 2) : BorderSide.none,
              ),
            ),
            child: Column(
              crossAxisAlignment: isUrdu ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                Text(
                  isUrdu ? contentUr : contentEn,
                  textAlign: isUrdu ? TextAlign.right : TextAlign.left,
                  style: TextStyle(
                    fontSize: 14, 
                    color: isDark ? Colors.white70 : Colors.black54,
                    height: isUrdu ? 2.0 : 1.5,
                  ),
                ),
                if (arabic != null) ...[
                  const SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: isDark ? Colors.black38 : Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: isDark ? Colors.white10 : Colors.black.withOpacity(0.05)),
                    ),
                    child: Text(
                      arabic,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.amiri(
                        fontSize: 24,
                        height: 2.0,
                        fontWeight: FontWeight.bold,
                        color: isDark ? Colors.white : Colors.black87,
                      ),
                    ),
                  ),
                ],
                if (isUrdu && translationUr != null) ...[
                  const SizedBox(height: 12),
                  Text(
                    translationUr,
                    textDirection: TextDirection.rtl,
                    style: GoogleFonts.notoNastaliqUrdu(fontSize: 14, height: 2.2, color: AppColors.primaryTeal),
                  ),
                ],
                if (!isUrdu && translationEn != null) ...[
                  const SizedBox(height: 12),
                  Text(
                    translationEn,
                    style: TextStyle(fontSize: 13, fontStyle: FontStyle.italic, color: AppColors.primaryTeal.withOpacity(0.8)),
                  ),
                ],
                const SizedBox(height: 16),
                // Reference Tag
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.primaryTeal.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    isUrdu ? "حوالہ: $ref" : "Ref: $ref",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade500,
                      letterSpacing: isUrdu ? 0 : 0.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStepCircle(String step) {
    return Container(
      width: 26,
      height: 26,
      decoration: const BoxDecoration(
        color: AppColors.primaryTeal,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          step,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 11),
        ),
      ),
    );
  }

  String _getThirdTakbeerArabic(_JanazaType type) {
    if (type == _JanazaType.adultMan || type == _JanazaType.adultWoman) {
      return "اللَّهُمَّ اغْفِرْ لِحَيِّنَا وَمَيِّتِنَا وَشَاهِدِنَا وَغَائِبِنَا وَصَغِيرِنَا وَكَبِيرِنَا وَذَكَرِنَا وَأُنْثَانَا، اللَّهُمَّ مَنْ أَحْيَيْتَهُ مِنَّا فَأَحْيِهِ عَلَى الْإِسْلَامِ، وَمَنْ تَوَفَّيْتَهُ مِنَّا فَتَوَفَّهُ عَلَى الْإِيمَانِ";
    } else if (type == _JanazaType.boy) {
      return "اللَّهُمَّ اجْعَلْهُ لَنَا فَرَطًا، وَاجْعَلْهُ لَنَا أَجْرًا وَذُخْرًا، وَاجْعَلْهُ لَنَا شَافِعًا وَمُشَفَّعًا";
    } else {
      return "اللَّهُمَّ اجْعَلْهَا لَنَا فَرَطًا، وَاجْعَلْهَا لَنَا أَجْرًا وَذُخْرًا، وَاجْعَلْهَا لَنَا شَافِعَةً وَمُشَفَّعَةً";
    }
  }

  String _getThirdTakbeerTranslationEn(_JanazaType type) {
    if (type == _JanazaType.adultMan || type == _JanazaType.adultWoman) {
      return "O Allah, forgive our living and our dead, those present and those absent, our young and our old, our males and our females. O Allah, whomsoever among us You keep to live, then let him live on Islam, and whomsoever among us You cause to die, then let him die on Iman.";
    } else {
      return "O Allah, make him/her for us a precursor, and make him/her for us a reward and a treasure, and make him/her for us an intercessor whose intercession is accepted.";
    }
  }

  String _getThirdTakbeerUrdu(_JanazaType type) {
    if (type == _JanazaType.adultMan || type == _JanazaType.adultWoman) {
      return "اے اللہ! ہمارے ہر زندہ اور مردہ، حاضر اور غائب، چھوٹے اور بڑے، اور مرد اور عورت کی مغفرت فرما۔ اے اللہ! ہم میں سے تو جس کو زندہ رکھے اسے اسلام پر زندہ رکھ اور جسے موت دے اسے ایمان پر موت دے۔";
    } else if (type == _JanazaType.boy) {
      return "اے اللہ! اس (بچے) کو ہمارے لیے آگے پہنچ کر سامانِ راحت بننے والا بنا، اور اس کو ہمارے لیے اجر اور ذخیرہ بنا، اور اس کو ہمارے لیے شفاعت کرنے والا بنا جس کی شفاعت قبول کی جائے۔";
    } else {
      return "اے اللہ! اس (بچی) کو ہمارے لیے آگے پہنچ کر سامانِ راحت بننے والی بنا، اور اس کو ہمارے لیے اجر اور ذخیرہ بنا، اور اس کو ہمارے لیے شفاعت کرنے والی بنا جس کی شفاعت قبول کی جائے۔";
    }
  }

  String _getThirdTakbeerRef(_JanazaType type) {
    if (type == _JanazaType.adultMan || type == _JanazaType.adultWoman) {
      return "Sunan Tirmidhi: 1024, Abu Dawud: 3201";
    } else {
      return "Fatawa Alamgiri, Al-Sirajiyyah";
    }
  }
}
