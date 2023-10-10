// ignore_for_file: await_only_futures

import 'package:dartz/dartz.dart';

import '../../domain/repositories/auth_repository.dart';
import '../../core/error/failures.dart';
import '/data/datasources/remote/auth_remote_datasource.dart';
import '/domain/entities/user.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl({
    required this.authRemoteDataSource,
  });

  @override
  Future<Either<Failure, void>> forgotPassword(String email) async {
    try {
      return await Right(authRemoteDataSource.forgotPassword(email));
    } catch (err) {
      return Left(Failure());
    }
  }

  @override
  Future<Either<Failure, User>> getCurrentUser() async {
    try {
      User user = await authRemoteDataSource.getCurrentUser();
      return Right(user);
    } catch (err) {
      return Left(Failure());
    }
  }

  @override
  Future<Either<Failure, bool>> isSignedIn() async {
    try {
      bool isSigned = await authRemoteDataSource.isSignedIn();
      return Right(isSigned);
    } catch (err) {
      return Left(Failure());
    }
  }

  @override
  Future<Either<Failure, User>> signIn(User user) async {
    try {
      User signedInUser = await authRemoteDataSource.signIn(user);
      return Right(signedInUser);
    } catch (err) {
      return Left(Failure());
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      return await Right(authRemoteDataSource.signOut());
    } catch (err) {
      return Left(Failure());
    }
  }

  @override
  Future<Either<Failure, User>> signUp(User user) async {
    try {
      User newUser = await authRemoteDataSource.signUp(user);
      return Right(newUser);
    } catch (err) {
      return Left(Failure());
    }
  }

  @override
  Future<Either<Failure, void>> updateUser(User user) async {
    try {
      return await Right(authRemoteDataSource.updateUser(user));
    } catch (err) {
      return Left(Failure());
    }
  }
}
