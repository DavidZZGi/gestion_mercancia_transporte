import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestion_mercancia_transporte/app/core/no_params.dart';

import '../../../domain/synchronization_use_case.dart';

part 'synchronization_state.dart';
part 'synchronization_cubit.freezed.dart';

class SynchronizationCubit extends Cubit<SynchronizationState> {
  final SynchronizationUseCase synchronizationUseCase;
  SynchronizationCubit({required this.synchronizationUseCase})
      : super(const SynchronizationState.initial());

  Future<void> upLoadDataToServer() async {
    emit(const _Loading());
    try {
      await synchronizationUseCase.call(NoParams());
      emit(const _SuccessUpload());
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }
}
