import '../entities/tasbeeh_entity.dart';

abstract class TasbeehRepository {
  Future<void> updateCount(String id, int count);
  int getCount(String id);
}