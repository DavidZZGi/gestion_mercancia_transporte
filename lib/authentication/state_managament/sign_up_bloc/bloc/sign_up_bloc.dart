import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestion_mercancia_transporte/authentication/authentication_repository/models/user.dart';
import 'package:gestion_mercancia_transporte/authentication/domain/sign_up_use_case.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCase signUpUseCase;
  SignUpBloc({required this.signUpUseCase}) : super(const _Initial()) {
    on<_SignUp>(_onSignUp);
  }

  FutureOr<void> _onSignUp(_SignUp event, Emitter<SignUpState> emit) async {
    emit(const _Loading());
    try {
      await signUpUseCase.call(event.user);
      emit(_Success(user: event.user));
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }
}
