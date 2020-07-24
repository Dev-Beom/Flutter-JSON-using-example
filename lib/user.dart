//1. part 'user.g.dart';를 적는다.
//2. 터미널에서 flutter pub run build_runner build 해야함.

import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String name;
  final String email;
  @JsonKey(name: 'created_time') //Key 값이 _로 인해 다름을 방지
  final int createdTime;

  User(this.name, this.email, this.createdTime);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
