import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import '../models/hadith_model.dart';

class HadithLocalDataSource {
  Box get _box => Hive.box('hadith_cache');

  // Data save karna (Map mein convert karke)
  Future<void> cacheHadiths(String key, List<dynamic> hadiths) async {
    try {
      await _box.put(key, hadiths);
    } catch (e) {
      debugPrint('Error caching hadiths: $e');
    }
  }

  // Data fetch karna
  List<dynamic>? getCachedHadiths(String key) {
    try {
      return _box.get(key);
    } catch (e) {
      debugPrint('Error getting cached hadiths: $e');
      return null;
    }
  }
}