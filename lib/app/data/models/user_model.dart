class User {
  String? id;
  String? validasi;
  String? username;
  String? password;
  String? role;

  User({this.id, this.validasi, this.username, this.password, this.role});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    validasi = json['validasi'];
    username = json['username'];
    password = json['password'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['validasi'] = validasi;
    data['username'] = username;
    data['password'] = password;
    data['role'] = role;
    return data;
  }
}
