import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../data/datasources/tasbeeh_local_data_source.dart';
import '../../data/repositories/tasbeeh_repository_impl.dart';
import '../../domain/usecases/increment_tasbeeh_usecase.dart';
import '../../domain/usecases/reset_tasbeeh_usecase.dart';

// 1. Data Source Provider
final tasbeehDataSourceProvider = Provider((ref) => TasbeehLocalDataSource());

// 2. Repository Provider
final tasbeehRepositoryProvider = Provider((ref) => TasbeehRepositoryImpl(ref.read(tasbeehDataSourceProvider)));

// 3. UseCase Providers
final incrementUseCaseProvider = Provider((ref) => IncrementTasbeehUseCase(ref.read(tasbeehRepositoryProvider)));
final resetUseCaseProvider = Provider((ref) => ResetTasbeehUseCase(ref.read(tasbeehRepositoryProvider)));

// 4. State Management
final tasbeehProvider = StateNotifierProvider.family<TasbeehNotifier, int, String>((ref, id) {
  return TasbeehNotifier(
    id,
    ref.read(tasbeehRepositoryProvider).getCount(id),
    ref.read(incrementUseCaseProvider),
    ref.read(resetUseCaseProvider),
  );
});

class TasbeehNotifier extends StateNotifier<int> {
  final String id;
  final IncrementTasbeehUseCase incrementUseCase;
  final ResetTasbeehUseCase resetUseCase;

  TasbeehNotifier(this.id, int initialCount, this.incrementUseCase, this.resetUseCase) : super(initialCount);

  Future<void> increment() async {
    state = (state >= 999999) ? 0 : state + 1;
    await incrementUseCase.call(id, state);
  }

  Future<void> reset() async {
    state = 0;
    await resetUseCase.call(id);
  }
}