class User {
  String? username;
  String? password;
  String? role;

  User({this.username, this.password, this.role});

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['username'] = username;
    data['password'] = password;
    data['role'] = role;
    return data;
  }
}
