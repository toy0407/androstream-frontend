import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../repositories/auth_repository.dart';

class IsSignedInUsecase {
  final AuthRepository authRepository;

  IsSignedInUsecase({required this.authRepository});

  Future<Either<Failure, bool>> isSignedIn() {
    return authRepository.isSignedIn();
  }
}
