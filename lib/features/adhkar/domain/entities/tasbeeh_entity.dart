class DhikrEntity {
  final String id;
  final String arabic;
  final String english;
  final String urdu;
  final int count;

  DhikrEntity({
    required this.id,
    required this.arabic,
    required this.english,
    required this.urdu,
    this.count = 0,
  });
}