import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestion_mercancia_transporte/app/core/no_params.dart';

import '../../../domain/is_authenticated_use_case.dart';

part 'authentication_state.dart';
part 'authentication_cubit.freezed.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  final IsAuthenticatedUseCase isAuthenticatedUseCase;
  AuthenticationCubit({required this.isAuthenticatedUseCase})
      : super(const AuthenticationState.initial());

  bool isAuthenticated() {
    final isAthenticated = isAuthenticatedUseCase.call(NoParams());
    if (isAthenticated) {
      emit(const _Authenticated());
    } else {
      emit(const _Unauthenticated());
    }
    return isAthenticated;
  }
}
