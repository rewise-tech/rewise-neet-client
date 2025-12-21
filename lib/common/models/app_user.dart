class AppUser {
  final String uid;
  final String email;
  final String name;
  final String mobile;

  AppUser({
    required this.uid,
    required this.email,
    required this.name,
    required this.mobile,
  });

  // convert app user -> json
  Map<String, dynamic> toJson() {
    return {'uid': uid, 'email': email, 'name': name, 'mobile': mobile};
  }

  // convert json -> app user
  factory AppUser.fromJson(Map<String, dynamic> jsonUser) {
    return AppUser(
      uid: jsonUser['uid'],
      email: jsonUser['email'],
      name: jsonUser['name'] ?? '',
      mobile: jsonUser['mobile'] ?? '',
    );
  }
}
