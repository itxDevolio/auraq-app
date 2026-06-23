import 'package:hive/hive.dart';

class TasbeehLocalDataSource {
  final Box _box = Hive.box('tasbeeh_box');

  Future<void> updateCount(String id, int count) async {
    // 10 Lakh (1,000,000) limit reset
    final newCount = (count >= 1000000) ? 0 : count;
    await _box.put(id, newCount);
  }

  int getCount(String id) => _box.get(id, defaultValue: 0);
}