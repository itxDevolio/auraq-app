import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../data/datasources/local_data_source.dart';

final adhkarDataSourceProvider = Provider((ref) => AdhkarLocalDataSource());

final adhkarCountProvider = StateNotifierProvider.family<DhikrNotifier, int, String>((ref, id) {
  final dataSource = ref.watch(adhkarDataSourceProvider);
  return DhikrNotifier(id, dataSource);
});

class DhikrNotifier extends StateNotifier<int> {
  final String id;
  final AdhkarLocalDataSource dataSource;

  DhikrNotifier(this.id, this.dataSource) : super(0) {
    _loadCount();
  }

  Future<void> _loadCount() async {
    final data = await dataSource.getDhikrData(id);
    if (data != null) {
      state = data['count'] ?? 0;
    }
  }

  void increment() {
    state++;
    dataSource.updateCount(id, state);
  }

  void reset() {
    state = 0;
    dataSource.updateCount(id, 0);
  }
}
