import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestion_mercancia_transporte/authentication/domain/params_models/sign_in_use_case_params.dart';
import 'package:gestion_mercancia_transporte/authentication/domain/sign_in_use_case.dart';

import '../../../authentication_repository/models/user.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInUseCase signInUseCase;
  SignInBloc({required this.signInUseCase}) : super(const _Initial()) {
    on<_SignIn>(_onSignIn);
  }

  FutureOr<void> _onSignIn(_SignIn event, Emitter<SignInState> emit) async {
    emit(const _Loading());
    try {
      final user = await signInUseCase
          .call(SignInParams(email: event.username, password: event.password));
      emit(_Success(user: user!));
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }
}
