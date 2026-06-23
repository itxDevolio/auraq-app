import '../../domain/entities/dhikr_entity.dart';
import '../../domain/repositories/adhkar_repository.dart';
import '../datasources/local_data_source.dart';
import '../models/dhikr_model.dart';

class AdhkarRepositoryImpl implements AdhkarRepository {
  final AdhkarLocalDataSource localDataSource;

  AdhkarRepositoryImpl(this.localDataSource);

  @override
  Future<void> incrementCount(String id, int currentCount) async {
    await localDataSource.updateCount(id, currentCount + 1);
  }

  @override
  Future<DhikrEntity?> getDhikrById(String id) async {
    final data = await localDataSource.getDhikrData(id);
    if (data != null) {
      return DhikrModel.fromMap(data);
    }
    return null;
  }
}
