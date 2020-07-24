class User {
  final String name;
  final String email;
  final int createdTime;

  User(this.name, this.email, this.createdTime);

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'],
        createdTime = json['created_time'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'created_time': createdTime,
      };
}
