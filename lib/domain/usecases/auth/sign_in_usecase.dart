import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../repositories/auth_repository.dart';
import '../../entities/user.dart';

class SignInUsecase {
  final AuthRepository authRepository;

  SignInUsecase({required this.authRepository});

  Future<Either<Failure, User>> signIn(User user) async {
    return authRepository.signIn(user);
  }
}
