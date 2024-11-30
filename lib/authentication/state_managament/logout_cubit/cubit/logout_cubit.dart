import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestion_mercancia_transporte/app/core/no_params.dart';
import 'package:gestion_mercancia_transporte/authentication/domain/logout_use_case.dart';

part 'logout_state.dart';
part 'logout_cubit.freezed.dart';

class LogoutCubit extends Cubit<LogoutState> {
  final LogoutUseCase logoutUseCase;
  LogoutCubit({required this.logoutUseCase})
      : super(const LogoutState.initial());

  void logOut() async {
    emit(const LogoutState.initial());
    try {
      await logoutUseCase.call(NoParams());
      emit(const LogoutState.success());
    } catch (e) {
      emit(_Error(e.toString()));
    }
  }
}
