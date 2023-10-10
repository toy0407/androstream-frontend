import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../repositories/auth_repository.dart';

class ForgotPasswordUsecase {
  final AuthRepository authRepository;

  ForgotPasswordUsecase({required this.authRepository});

  Future<Either<Failure, void>> forgotPassword(String email) {
    return authRepository.forgotPassword(email);
  }
}
