import '../repositories/tasbeeh_repository.dart';

class IncrementTasbeehUseCase {
  final TasbeehRepository repository;
  IncrementTasbeehUseCase(this.repository);

  Future<void> call(String id, int currentCount) async {
    int newCount = (currentCount >= 1000000) ? 0 : currentCount + 1;
    await repository.updateCount(id, newCount);
  }
}