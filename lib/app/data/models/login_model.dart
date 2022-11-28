class Login {
  String? id;
  String? username;
  String? name;
  String? password;
  String? role;

  Login({this.id, this.username, this.name, this.password, this.role});

  Login.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    name = json['name'];
    password = json['password'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['username'] = username;
    data['name'] = name;
    data['password'] = password;
    data['role'] = role;
    return data;
  }
}
