import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestion_mercancia_transporte/authentication/domain/change_password_use_case.dart';
import 'package:gestion_mercancia_transporte/authentication/domain/params_models/change_password_use_case_params.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';
part 'change_password_bloc.freezed.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final ChangePasswordUseCase changePasswordUseCase;
  ChangePasswordBloc({required this.changePasswordUseCase})
      : super(const _Initial()) {
    on<_ChangePassword>(_onChangePassword);
  }

  FutureOr<void> _onChangePassword(
      _ChangePassword event, Emitter<ChangePasswordState> emit) async {
    emit(const _Loading());
    try {
      await changePasswordUseCase.call(ChangePasswordUseCaseParams(
          newPassword: event.newPassword, userId: event.userId));
      emit(const _Success());
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }
}
