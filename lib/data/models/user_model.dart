import '../../domain/entities/user.dart';

class UserModel extends User {
  UserModel({
    super.userId,
    super.username,
    super.name,
    super.password,
    super.email,
    super.phoneNumber,
    super.image,
    super.userType,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    String type = json['userType'] as String;
    return UserModel(
        userId: json['userId'] == null ? null : json['userId'] as String,
        username: json['username'] == null ? null : json['username'] as String,
        name: json['name'] == null ? null : json['name'] as String,
        // password: json['password'] as String,
        phoneNumber:
            json['phoneNumber'] == null ? null : json['phoneNumber'] as String,
        email: json['email'] == null ? null : json['email'] as String,
        image: json['image'] == null ? null : json['image'] as String,
        userType: type == 'admin' ? UserType.admin : UserType.normal);
  }

  Map<String, dynamic> toJson(UserModel user) => <String, dynamic>{
        'name': user.name,
        'username': user.username,
        'password': user.password,
        'phoneNumber': user.phoneNumber,
        'email': user.email,
        'image': user.image,
        'userType': user.userType
      };
}
