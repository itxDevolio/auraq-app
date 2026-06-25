import '../../domain/entities/dhikr_entity.dart';

class DhikrModel extends DhikrEntity {
  DhikrModel({
    required super.id,
    required super.arabic,
    required super.english,
    required super.urdu,
    super.reference,
    super.fazilatEnglish,
    super.fazilatUrdu,
    super.count,
    super.targetCount,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'arabic': arabic,
      'english': english,
      'urdu': urdu,
      'reference': reference,
      'fazilatEnglish': fazilatEnglish,
      'fazilatUrdu': fazilatUrdu,
      'count': count,
      'targetCount': targetCount,
    };
  }

  factory DhikrModel.fromMap(Map<dynamic, dynamic> map) {
    return DhikrModel(
      id: map['id'],
      arabic: map['arabic'],
      english: map['english'],
      urdu: map['urdu'],
      reference: map['reference'],
      fazilatEnglish: map['fazilatEnglish'],
      fazilatUrdu: map['fazilatUrdu'],
      count: map['count'] ?? 0,
      targetCount: map['targetCount'] ?? 1,
    );
  }
}
