import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../repositories/auth_repository.dart';
import '../../entities/user.dart';

class SignUpUsecase {
  final AuthRepository authRepository;

  SignUpUsecase({required this.authRepository});

  Future<Either<Failure, User>> signUp(User user) {
    return authRepository.signUp(user);
  }
}
