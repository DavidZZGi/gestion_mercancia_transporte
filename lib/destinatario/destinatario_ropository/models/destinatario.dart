import 'package:freezed_annotation/freezed_annotation.dart';

part 'destinatario.freezed.dart';
part 'destinatario.g.dart';

@Freezed()
@JsonSerializable()
class Destinatario with _$Destinatario {
  const factory Destinatario({
    required int id,
    required String name,
    required String address,
    required String phone,
  }) = _Destinatario;

  factory Destinatario.fromJson(Map<String, dynamic> json) =>
      _$DestinatarioFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$DestinatarioToJson(this);
}
