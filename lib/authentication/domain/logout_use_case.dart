import 'package:gestion_mercancia_transporte/app/core/no_params.dart';
import 'package:gestion_mercancia_transporte/app/core/use_case.dart';

import '../authentication_repository/authentication_repository.dart';

class LogoutUseCase implements UseCase<Future<void>, NoParams> {
  final AuthenticationRepository authenticationRepository;
  LogoutUseCase({required this.authenticationRepository});
  @override
  Future<void> call(NoParams params) async =>
      await authenticationRepository.logOut();
}
