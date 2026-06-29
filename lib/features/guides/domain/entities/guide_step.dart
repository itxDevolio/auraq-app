class GuideStep {
  final String stepNumber;
  final String titleEn;
  final String titleUr;
  final String contentEn;
  final String contentUr;
  final String? arabic;
  final String? translationEn;
  final String? translationUr;
  final String reference;
  final String? hanafiNoteEn;
  final String? hanafiNoteUr;
  final String? shafiNoteEn;
  final String? shafiNoteUr;

  GuideStep({
    required this.stepNumber,
    required this.titleEn,
    required this.titleUr,
    required this.contentEn,
    required this.contentUr,
    this.arabic,
    this.translationEn,
    this.translationUr,
    required this.reference,
    this.hanafiNoteEn,
    this.hanafiNoteUr,
    this.shafiNoteEn,
    this.shafiNoteUr,
  });
}
