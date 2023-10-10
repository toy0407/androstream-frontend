import '../../../domain/entities/user.dart';
import '../../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> signIn(User user);
  Future<UserModel> signUp(User user);
  Future<void> signOut();
  Future<bool> isSignedIn();
  Future<void> forgotPassword(String email);
  //TODO:Future<void> googleAuth();
  //TODO:Future<void> facebookAuth();
  //TODO:Future<void> appleAuth();
  Future<void> updateUser(User user);
  Future<UserModel> getCurrentUser();
}
