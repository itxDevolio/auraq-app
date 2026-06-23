import '../../domain/repositories/tasbeeh_repository.dart';
import '../datasources/tasbeeh_local_data_source.dart';

class TasbeehRepositoryImpl implements TasbeehRepository {
  final TasbeehLocalDataSource localDataSource;

  TasbeehRepositoryImpl(this.localDataSource);

  @override
  Future<void> updateCount(String id, int count) async {
    await localDataSource.updateCount(id, count);
  }

  @override
  int getCount(String id) {
    return localDataSource.getCount(id);
  }
}