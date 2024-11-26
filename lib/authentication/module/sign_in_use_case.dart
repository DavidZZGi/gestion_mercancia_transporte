import 'package:gestion_mercancia_transporte/app/core/use_case.dart';
import 'package:gestion_mercancia_transporte/authentication/authentication_repository/authentication_repository.dart';

import '../authentication_repository/models/user.dart';
import 'params_models/sign_in_use_case_params.dart';

class SignInUseCase implements UseCase<Future<User?>, SignInParams> {
  final AuthenticationRepository authenticationRepository;
  SignInUseCase({required this.authenticationRepository});
  @override
  call(params) => authenticationRepository.signIn(
      email: params.email, password: params.password);
}
