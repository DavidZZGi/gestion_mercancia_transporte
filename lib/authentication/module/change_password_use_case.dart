import 'package:gestion_mercancia_transporte/app/core/use_case.dart';
import 'package:gestion_mercancia_transporte/authentication/authentication_repository/authentication_repository.dart';

import 'params_models/change_password_use_case_params.dart';

class ChangePasswordUseCase
    implements UseCase<Future<void>, ChangePasswordUseCaseParams> {
  final AuthenticationRepository authenticationRepository;
  ChangePasswordUseCase({required this.authenticationRepository});

  @override
  call(params) => authenticationRepository.changePassword(
      userId: params.userId, newPassword: params.newPassword);
}
