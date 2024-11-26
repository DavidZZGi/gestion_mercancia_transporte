import 'package:gestion_mercancia_transporte/app/core/use_case.dart';
import 'package:gestion_mercancia_transporte/authentication/authentication_repository/authentication_repository.dart';

import '../authentication_repository/models/user.dart';

class SignUpUseCase implements UseCase<Future<void>, User> {
  final AuthenticationRepository authenticationRepository;
  SignUpUseCase({required this.authenticationRepository});
  @override
  call(params) => authenticationRepository.signUp(user: params);
}
