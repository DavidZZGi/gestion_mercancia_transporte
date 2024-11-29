import 'package:gestion_mercancia_transporte/app/core/no_params.dart';
import 'package:gestion_mercancia_transporte/app/core/use_case.dart';

import '../authentication_repository/authentication_repository.dart';

class IsAuthenticatedUseCase implements UseCase<bool, NoParams> {
  final AuthenticationRepository authenticationRepository;
  IsAuthenticatedUseCase({required this.authenticationRepository});
  @override
  bool call(NoParams params) => authenticationRepository.isAuthenticated();
}
