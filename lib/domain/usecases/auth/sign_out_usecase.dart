import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../repositories/auth_repository.dart';

class SignOutUsecase {
  final AuthRepository authRepository;

  SignOutUsecase({required this.authRepository});

  Future<Either<Failure, void>> signOut() {
    return authRepository.signOut();
  }
}
