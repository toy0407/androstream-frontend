class User {
  late String? userId;
  // late String? userToken;
  late String? username;
  late String? name;
  late String? password;
  late String? phoneNumber;
  // late String? about;
  late String? email;
  //TODO: Add gender
  late String? image;
  late UserType? userType;

  User(
      {this.userId,
      this.username,
      this.name,
      this.password,
      this.email,
      this.phoneNumber,
      this.image,
      this.userType});
}

enum UserType {
  admin,
  normal,
}
