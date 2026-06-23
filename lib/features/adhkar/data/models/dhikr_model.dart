import '../../domain/entities/dhikr_entity.dart';

class DhikrModel extends DhikrEntity {
  DhikrModel({
    required super.id,
    required super.arabic,
    required super.english,
    required super.urdu,
    super.reference,
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
      count: map['count'] ?? 0,
      targetCount: map['targetCount'] ?? 1,
    );
  }
}
