import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../repositories/auth_repository.dart';
import '../../entities/user.dart';

class UpdateUserUsecase {
  final AuthRepository authRepository;

  UpdateUserUsecase({required this.authRepository});

  Future<Either<Failure, void>> updateUser(User user) {
    return authRepository.updateUser(user);
  }
}
