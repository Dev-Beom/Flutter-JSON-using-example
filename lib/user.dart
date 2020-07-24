import 'address.dart';

//1. part 'user.g.dart';를 적는다.
//2. 터미널에서 flutter pub run build_runner build 해야함.

//재생성할 땐 flutter pub run build_runner watch 으로 하면 클래스를 계속 보고있다가 바뀌면 바뀐대로 user.g.dart를 다시 생성해줌
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  final String name;
  final String email;
  @JsonKey(name: 'created_time') //Key 값이 _로 인해 다름을 방지
  final int createdTime;

  final Address address;

  User(this.name, this.email, this.createdTime, this.address);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
