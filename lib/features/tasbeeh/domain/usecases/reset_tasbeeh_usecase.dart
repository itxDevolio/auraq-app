import '../repositories/tasbeeh_repository.dart';

class ResetTasbeehUseCase {
  final TasbeehRepository repository;
  ResetTasbeehUseCase(this.repository);

  Future<void> call(String id) async {
    await repository.updateCount(id, 0);
  }
}