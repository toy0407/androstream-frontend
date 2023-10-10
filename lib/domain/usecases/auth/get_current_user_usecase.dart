import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../repositories/auth_repository.dart';
import '../../entities/user.dart';

class GetCurrentUserUsecase {
  final AuthRepository authRepository;

  GetCurrentUserUsecase({required this.authRepository});

  Future<Either<Failure, User>> getCurrentUser() {
    return authRepository.getCurrentUser();
  }
}
