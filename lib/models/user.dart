class User {
  const User(
      {required this.name,
      required this.nickname,
      required this.password,
      this.id});
  final int? id;
  final String name;
  final String password;
  final String nickname;
}
