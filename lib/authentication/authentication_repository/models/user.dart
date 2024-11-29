import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

//Password field is going to be saved with its hash for security reasons
@Freezed()
@JsonSerializable()
class User with _$User {
  const factory User({
    int? id,
    required String username,
    required String email,
    required String passwordHash,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
