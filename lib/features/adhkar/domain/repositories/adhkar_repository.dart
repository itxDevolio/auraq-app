import '../entities/dhikr_entity.dart';

abstract class AdhkarRepository {
  Future<void> incrementCount(String id, int currentCount);
  Future<DhikrEntity?> getDhikrById(String id);
}