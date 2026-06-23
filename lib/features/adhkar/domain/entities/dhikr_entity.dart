class DhikrEntity {
  final String id;
  final String arabic;
  final String english;
  final String urdu;
  final String? reference;
  final int count;
  final int targetCount;

  DhikrEntity({
    required this.id,
    required this.arabic,
    required this.english,
    required this.urdu,
    this.reference,
    this.count = 0,
    this.targetCount = 1,
  });
}
